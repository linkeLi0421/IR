; ModuleID = '/llk/IR/drivers/base/topology.c_pt.bc'
source_filename = "../drivers/base/topology.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@__initcall__kmod_topology__220_180_topology_sysfs_init6 = internal global ptr @topology_sysfs_init, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [22 x i8] c"base/topology:prepare\00", align 1
@topology_attr_group = internal constant %struct.attribute_group { ptr @.str.1, ptr null, ptr null, ptr @default_attrs, ptr @bin_attrs }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"topology\00", align 1
@default_attrs = internal global [4 x ptr] [ptr @dev_attr_physical_package_id, ptr @dev_attr_cluster_id, ptr @dev_attr_core_id, ptr null], align 4
@bin_attrs = internal global [11 x ptr] [ptr @bin_attr_core_cpus, ptr @bin_attr_core_cpus_list, ptr @bin_attr_thread_siblings, ptr @bin_attr_thread_siblings_list, ptr @bin_attr_core_siblings, ptr @bin_attr_core_siblings_list, ptr @bin_attr_cluster_cpus, ptr @bin_attr_cluster_cpus_list, ptr @bin_attr_package_cpus, ptr @bin_attr_package_cpus_list, ptr null], align 4
@dev_attr_physical_package_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @physical_package_id_show, ptr null }, align 4
@dev_attr_cluster_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @cluster_id_show, ptr null }, align 4
@dev_attr_core_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @core_id_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"physical_package_id\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@cpu_topology = external dso_local global [16 x %struct.cpu_topology], align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"cluster_id\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"core_id\00", align 1
@bin_attr_core_cpus = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.6, i16 292 }, i32 0, ptr null, ptr null, ptr @core_cpus_read, ptr null, ptr null }, align 4
@bin_attr_core_cpus_list = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.7, i16 292 }, i32 0, ptr null, ptr null, ptr @core_cpus_list_read, ptr null, ptr null }, align 4
@bin_attr_thread_siblings = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.8, i16 292 }, i32 0, ptr null, ptr null, ptr @thread_siblings_read, ptr null, ptr null }, align 4
@bin_attr_thread_siblings_list = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.9, i16 292 }, i32 0, ptr null, ptr null, ptr @thread_siblings_list_read, ptr null, ptr null }, align 4
@bin_attr_core_siblings = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.10, i16 292 }, i32 0, ptr null, ptr null, ptr @core_siblings_read, ptr null, ptr null }, align 4
@bin_attr_core_siblings_list = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.11, i16 292 }, i32 0, ptr null, ptr null, ptr @core_siblings_list_read, ptr null, ptr null }, align 4
@bin_attr_cluster_cpus = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.12, i16 292 }, i32 0, ptr null, ptr null, ptr @cluster_cpus_read, ptr null, ptr null }, align 4
@bin_attr_cluster_cpus_list = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.13, i16 292 }, i32 0, ptr null, ptr null, ptr @cluster_cpus_list_read, ptr null, ptr null }, align 4
@bin_attr_package_cpus = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.14, i16 292 }, i32 0, ptr null, ptr null, ptr @package_cpus_read, ptr null, ptr null }, align 4
@bin_attr_package_cpus_list = internal global %struct.bin_attribute { %struct.attribute { ptr @.str.15, i16 292 }, i32 0, ptr null, ptr null, ptr @package_cpus_list_read, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"core_cpus\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"core_cpus_list\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"thread_siblings\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"thread_siblings_list\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"core_siblings\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"core_siblings_list\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"cluster_cpus\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"cluster_cpus_list\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"package_cpus\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"package_cpus_list\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_topology__220_180_topology_sysfs_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @topology_sysfs_init() #0 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 59, ptr noundef nonnull @.str, i1 noundef zeroext true, ptr noundef nonnull @topology_add_dev, ptr noundef nonnull @topology_remove_dev, i1 noundef zeroext false) #3
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @topology_add_dev(i32 noundef %0) #1 {
  %2 = tail call ptr @get_cpu_device(i32 noundef %0) #3
  %3 = tail call i32 @sysfs_create_group(ptr noundef %2, ptr noundef nonnull @topology_attr_group) #3
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @topology_remove_dev(i32 noundef %0) #1 {
  %2 = tail call ptr @get_cpu_device(i32 noundef %0) #3
  tail call void @sysfs_remove_group(ptr noundef %2, ptr noundef nonnull @topology_attr_group) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @physical_package_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %5, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %7) #3
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cluster_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %5, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %7) #3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @core_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %5, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %7) #3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @core_cpus_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %8, i32 5
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @bitmap_print_bitmask_to_buf(ptr noundef %3, ptr noundef %9, i32 noundef %10, i64 noundef %4, i32 noundef %5) #3
  %12 = add i32 %11, -1
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_bitmask_to_buf(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @core_cpus_list_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %8, i32 5
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @bitmap_print_list_to_buf(ptr noundef %3, ptr noundef %9, i32 noundef %10, i64 noundef %4, i32 noundef %5) #3
  %12 = add i32 %11, -1
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_list_to_buf(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @thread_siblings_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %8, i32 5
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @bitmap_print_bitmask_to_buf(ptr noundef %3, ptr noundef %9, i32 noundef %10, i64 noundef %4, i32 noundef %5) #3
  %12 = add i32 %11, -1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @thread_siblings_list_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %8, i32 5
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @bitmap_print_list_to_buf(ptr noundef %3, ptr noundef %9, i32 noundef %10, i64 noundef %4, i32 noundef %5) #3
  %12 = add i32 %11, -1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @core_siblings_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %8, i32 6
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @bitmap_print_bitmask_to_buf(ptr noundef %3, ptr noundef %9, i32 noundef %10, i64 noundef %4, i32 noundef %5) #3
  %12 = add i32 %11, -1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @core_siblings_list_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %8, i32 6
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @bitmap_print_list_to_buf(ptr noundef %3, ptr noundef %9, i32 noundef %10, i64 noundef %4, i32 noundef %5) #3
  %12 = add i32 %11, -1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cluster_cpus_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %8, i32 7
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @bitmap_print_bitmask_to_buf(ptr noundef %3, ptr noundef %9, i32 noundef %10, i64 noundef %4, i32 noundef %5) #3
  %12 = add i32 %11, -1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cluster_cpus_list_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %8, i32 7
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @bitmap_print_list_to_buf(ptr noundef %3, ptr noundef %9, i32 noundef %10, i64 noundef %4, i32 noundef %5) #3
  %12 = add i32 %11, -1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @package_cpus_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %8, i32 6
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @bitmap_print_bitmask_to_buf(ptr noundef %3, ptr noundef %9, i32 noundef %10, i64 noundef %4, i32 noundef %5) #3
  %12 = add i32 %11, -1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @package_cpus_list_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr [16 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %8, i32 6
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = tail call i32 @bitmap_print_list_to_buf(ptr noundef %3, ptr noundef %9, i32 noundef %10, i64 noundef %4, i32 noundef %5) #3
  %12 = add i32 %11, -1
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
