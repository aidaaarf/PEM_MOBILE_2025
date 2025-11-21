import 'package:flutter/material.dart';
import 'package:master_plan/models/data_layer.dart';
import 'package:master_plan/provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;
  const PlanScreen({super.key, required this.plan});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).unfocus();
      });
  }

  @override
  Widget build(BuildContext context) {
    final plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(widget.plan.name)),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          
          // selalu ambil versi terbaru dari provider
          final currentPlan = plans.firstWhere(
            (p) => p.name == widget.plan.name,
          );

          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(child: Text(currentPlan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    final plansNotifier = PlanProvider.of(context);

    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        final plans = plansNotifier.value;

        int index = plans.indexWhere((p) => p.name == widget.plan.name);
        if (index == -1) return;

        final updatedTasks = List<Task>.from(plans[index].tasks)
          ..add(const Task());

        plansNotifier.value = List<Plan>.from(plans)
          ..[index] = Plan(name: widget.plan.name, tasks: updatedTasks);
      },
    );
  }

  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan, plan.tasks[index], index),
    );
  }

  Widget _buildTaskTile(Plan plan, Task task, int index) {
    final plansNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          final plans = plansNotifier.value;

          int planIndex = plans.indexWhere((p) => p.name == plan.name);
          if (planIndex == -1) return;

          final updatedTasks = List<Task>.from(plan.tasks)
            ..[index] = Task(
              description: task.description,
              complete: selected ?? false,
            );

          plansNotifier.value = List<Plan>.from(plans)
            ..[planIndex] = Plan(name: plan.name, tasks: updatedTasks);
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          final plans = plansNotifier.value;

          int planIndex = plans.indexWhere((p) => p.name == plan.name);
          if (planIndex == -1) return;

          final updatedTasks = List<Task>.from(plan.tasks)
            ..[index] = Task(
              description: text,
              complete: task.complete,
            );

          plansNotifier.value = List<Plan>.from(plans)
            ..[planIndex] = Plan(name: plan.name, tasks: updatedTasks);
        },
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
