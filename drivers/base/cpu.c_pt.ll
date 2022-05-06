; ModuleID = '/llk/IR/drivers/base/cpu.c_pt.bc'
source_filename = "../drivers/base/cpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cpu_device:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cpu_device\22\09\09\09\09\09"
module asm "__kstrtabns_get_cpu_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_device_create\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_is_hotpluggable:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_is_hotpluggable\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_is_hotpluggable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpu_attr = type { %struct.device_attribute, ptr }
%struct.cpu = type { i32, i32, %struct.device }
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
%struct.__va_list = type { ptr }

@cpu_sys_devices = internal global ptr null, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@cpu_subsys = dso_local global %struct.bus_type { ptr @.str, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @cpu_subsys_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpu_subsys_online, ptr @cpu_subsys_offline, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_cpu_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_subsys to i32), ptr @__kstrtab_cpu_subsys, ptr @__kstrtabns_cpu_subsys }, section "___ksymtab_gpl+cpu_subsys", align 4
@common_cpu_attr_groups = internal global [2 x ptr] [ptr @crash_note_cpu_attr_group, ptr null], align 4
@hotplugable_cpu_attr_groups = internal global [2 x ptr] [ptr @crash_note_cpu_attr_group, ptr null], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_get_cpu_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cpu_device = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cpu_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cpu_device to i32), ptr @__kstrtab_get_cpu_device, ptr @__kstrtabns_get_cpu_device }, section "___ksymtab_gpl+get_cpu_device", align 4
@__kstrtab_cpu_device_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_device_create = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_device_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_device_create to i32), ptr @__kstrtab_cpu_device_create, ptr @__kstrtabns_cpu_device_create }, section "___ksymtab_gpl+cpu_device_create", align 4
@__kstrtab_cpu_is_hotpluggable = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_is_hotpluggable = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_is_hotpluggable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_is_hotpluggable to i32), ptr @__kstrtab_cpu_is_hotpluggable, ptr @__kstrtabns_cpu_is_hotpluggable }, section "___ksymtab_gpl+cpu_is_hotpluggable", align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Not affected\0A\00", align 1
@cpu_root_attr_groups = internal global [2 x ptr] [ptr @cpu_root_attr_group, ptr null], align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to register CPU subsystem\00", align 1
@total_cpus = dso_local local_unnamed_addr global i32 0, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"MODALIAS=%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"cpu:type:%s:feature:\00", align 1
@elf_platform = external dso_local global [0 x i8], align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"drivers/base/cpu.c\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"CPU features overflow page\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c",%04X\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@elf_hwcap2 = external dso_local local_unnamed_addr global i32, align 4
@crash_note_cpu_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @crash_note_cpu_attrs, ptr null }, align 4
@crash_note_cpu_attrs = internal global [3 x ptr] [ptr @dev_attr_crash_notes, ptr @dev_attr_crash_notes_size, ptr null], align 4
@dev_attr_crash_notes = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 256 }, ptr @crash_notes_show, ptr null }, align 4
@dev_attr_crash_notes_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 256 }, ptr @crash_notes_size_show, ptr null }, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"crash_notes\00", align 1
@crash_notes = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"%llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"crash_notes_size\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_root_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cpu_root_attrs, ptr null }, align 4
@cpu_root_attrs = internal global [8 x ptr] [ptr @cpu_attrs, ptr getelementptr (i8, ptr @cpu_attrs, i64 20), ptr getelementptr (i8, ptr @cpu_attrs, i64 40), ptr @dev_attr_kernel_max, ptr @dev_attr_offline, ptr @dev_attr_isolated, ptr @dev_attr_modalias, ptr null], align 4
@cpu_attrs = internal global [3 x %struct.cpu_attr] [%struct.cpu_attr { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @show_cpus_attr, ptr null }, ptr @__cpu_online_mask }, %struct.cpu_attr { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @show_cpus_attr, ptr null }, ptr @__cpu_possible_mask }, %struct.cpu_attr { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @show_cpus_attr, ptr null }, ptr @__cpu_present_mask }], align 4
@dev_attr_kernel_max = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @print_cpus_kernel_max, ptr null }, align 4
@dev_attr_offline = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @print_cpus_offline, ptr null }, align 4
@dev_attr_isolated = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @print_cpus_isolated, ptr null }, align 4
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @print_cpu_modalias, ptr null }, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"possible\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"kernel_max\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"offline\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%*pbl\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%u-%d\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"isolated\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@cpu_root_vulnerabilities_group = internal constant %struct.attribute_group { ptr @.str.27, ptr null, ptr null, ptr @cpu_root_vulnerabilities_attrs, ptr null }, align 4
@.str.26 = private unnamed_addr constant [42 x i8] c"\013Unable to register CPU vulnerabilities\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"vulnerabilities\00", align 1
@cpu_root_vulnerabilities_attrs = internal global [10 x ptr] [ptr @dev_attr_meltdown, ptr @dev_attr_spectre_v1, ptr @dev_attr_spectre_v2, ptr @dev_attr_spec_store_bypass, ptr @dev_attr_l1tf, ptr @dev_attr_mds, ptr @dev_attr_tsx_async_abort, ptr @dev_attr_itlb_multihit, ptr @dev_attr_srbds, ptr null], align 4
@dev_attr_meltdown = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @cpu_show_meltdown, ptr null }, align 4
@dev_attr_spectre_v1 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @cpu_show_spectre_v1, ptr null }, align 4
@dev_attr_spectre_v2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @cpu_show_spectre_v2, ptr null }, align 4
@dev_attr_spec_store_bypass = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @cpu_show_spec_store_bypass, ptr null }, align 4
@dev_attr_l1tf = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @cpu_show_l1tf, ptr null }, align 4
@dev_attr_mds = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @cpu_show_mds, ptr null }, align 4
@dev_attr_tsx_async_abort = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @cpu_show_tsx_async_abort, ptr null }, align 4
@dev_attr_itlb_multihit = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292 }, ptr @cpu_show_itlb_multihit, ptr null }, align 4
@dev_attr_srbds = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @cpu_show_srbds, ptr null }, align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"meltdown\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"spectre_v1\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"spectre_v2\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"spec_store_bypass\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"l1tf\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"mds\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"tsx_async_abort\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"itlb_multihit\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"srbds\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_cpu_device_create, ptr @__ksymtab_cpu_is_hotpluggable, ptr @__ksymtab_cpu_subsys, ptr @__ksymtab_get_cpu_device], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_cpu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 2, i32 28
  %4 = load i32, ptr %3, align 4
  tail call void @device_unregister(ptr noundef %2) #11
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @cpu_sys_devices to i32)
  %8 = inttoptr i32 %7 to ptr
  store ptr null, ptr %8, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cpu_subsys_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #3 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_subsys_online(ptr noundef %0) #0 {
  %2 = tail call i32 @cpu_device_up(ptr noundef %0) #11
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_subsys_offline(ptr noundef %0) #0 {
  %2 = tail call i32 @cpu_device_down(ptr noundef %0) #11
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_cpu(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  store i32 0, ptr %0, align 8
  %3 = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(472) %3, i8 0, i32 472, i1 false)
  %4 = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 2, i32 28
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 2, i32 5
  store ptr @cpu_subsys, ptr %5, align 4
  %6 = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 2, i32 33
  store ptr @cpu_device_release, ptr %6, align 4
  %7 = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 2, i32 37
  %11 = zext i1 %9 to i8
  store i8 %11, ptr %10, align 4
  %12 = lshr i32 %1, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %1, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i8 2, i8 0
  %20 = or i8 %19, %11
  store i8 %20, ptr %10, align 4
  %21 = tail call ptr @of_get_cpu_node(i32 noundef %1, ptr noundef null) #11
  %22 = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 2, i32 25
  store ptr %21, ptr %22, align 8
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.bus_type, ptr %23, i32 0, i32 7
  store ptr @cpu_uevent, ptr %24, align 4
  %25 = getelementptr inbounds %struct.cpu, ptr %0, i32 0, i32 2, i32 32
  %26 = load i32, ptr %7, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @common_cpu_attr_groups, ptr @hotplugable_cpu_attr_groups
  store ptr %28, ptr %25, align 8
  %29 = tail call i32 @device_register(ptr noundef %3) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %2
  tail call void @put_device(ptr noundef %3) #11
  br label %38

32:                                               ; preds = %2
  %33 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, ptrtoint (ptr @cpu_sys_devices to i32)
  %36 = inttoptr i32 %35 to ptr
  store ptr %3, ptr %36, align 4
  %37 = tail call i32 @dev_pm_qos_expose_latency_limit(ptr noundef %3, i32 noundef 2147483647) #11
  br label %38

38:                                               ; preds = %32, %31
  ret i32 %29
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @cpu_device_release(ptr nocapture noundef %0) #3 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_uevent(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4096) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @print_cpu_modalias(ptr noundef null, ptr noundef null, ptr noundef nonnull %4)
  %8 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #11
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %9

9:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_expose_latency_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @get_cpu_device(i32 noundef %0) #5 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ugt i32 %2, %0
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  %5 = lshr i32 %0, 5
  %6 = getelementptr i32, ptr @__cpu_possible_mask, i32 %5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %0, 31
  %9 = shl nuw i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, ptrtoint (ptr @cpu_sys_devices to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %12, %4, %1
  %19 = phi ptr [ %17, %12 ], [ null, %4 ], [ null, %1 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cpu_device_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) #0 {
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %5)
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 472) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  %11 = insertvalue [1 x i32] poison, i32 %6, 0
  call void @device_initialize(ptr noundef nonnull %8) #11
  %12 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 32
  store ptr %2, ptr %13, align 8
  %14 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 33
  store ptr @device_create_release, ptr %14, align 4
  %15 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = or i16 %16, 128
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  store ptr %1, ptr %18, align 8
  %19 = call i32 @kobject_set_name_vargs(ptr noundef nonnull %8, ptr noundef %3, [1 x i32] %11) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = call i32 @device_add(ptr noundef nonnull %8) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %10, %4
  %25 = phi i32 [ %19, %10 ], [ %22, %21 ], [ -12, %4 ]
  call void @put_device(ptr noundef %8) #11
  %26 = inttoptr i32 %25 to ptr
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ %8, %21 ]
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret ptr %28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpu_is_hotpluggable(i32 noundef %0) #5 {
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ugt i32 %2, %0
  br i1 %3, label %4, label %23

4:                                                ; preds = %1
  %5 = lshr i32 %0, 5
  %6 = getelementptr i32, ptr @__cpu_possible_mask, i32 %5
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %0, 31
  %9 = shl nuw i32 1, %8
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %4
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, ptrtoint (ptr @cpu_sys_devices to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %17, i32 -4
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %19, %12, %4, %1
  %24 = phi i1 [ false, %12 ], [ %22, %19 ], [ false, %4 ], [ false, %1 ]
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @cpu_show_meltdown(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @cpu_show_spectre_v1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @cpu_show_spectre_v2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @cpu_show_spec_store_bypass(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @cpu_show_l1tf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @cpu_show_mds(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @cpu_show_tsx_async_abort(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @cpu_show_itlb_multihit(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @cpu_show_srbds(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cpu_dev_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @subsys_system_register(ptr noundef nonnull @cpu_subsys, ptr noundef nonnull @cpu_root_attr_groups) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #13
  unreachable

4:                                                ; preds = %0
  tail call fastcc void @cpu_register_vulnerabilities() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subsys_system_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @cpu_register_vulnerabilities() unnamed_addr #7 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.bus_type, ptr @cpu_subsys, i32 0, i32 2), align 4
  %2 = tail call i32 @sysfs_create_group(ptr noundef %1, ptr noundef nonnull @cpu_root_vulnerabilities_group) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_device_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_device_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @print_cpu_modalias(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @elf_platform) #11
  %5 = load i32, ptr @elf_hwcap2, align 4
  %6 = load i32, ptr @elf_hwcap, align 4
  br label %7

7:                                                ; preds = %28, %3
  %8 = phi i32 [ %6, %3 ], [ %29, %28 ]
  %9 = phi i32 [ %5, %3 ], [ %30, %28 ]
  %10 = phi i32 [ %4, %3 ], [ %31, %28 ]
  %11 = phi i32 [ 0, %3 ], [ %32, %28 ]
  %12 = icmp ult i32 %11, 32
  %13 = add nsw i32 %11, -32
  %14 = select i1 %12, i32 %11, i32 %13
  %15 = select i1 %12, i32 %8, i32 %9
  %16 = shl nuw i32 1, %14
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %7
  %20 = add i32 %10, -4089
  %21 = icmp ult i32 %20, -4096
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 330, i32 noundef 9, ptr noundef nonnull @.str.6) #11
  br label %34

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %10, ptr noundef nonnull @.str.7, i32 noundef %11) #11
  %25 = add i32 %24, %10
  %26 = load i32, ptr @elf_hwcap2, align 4
  %27 = load i32, ptr @elf_hwcap, align 4
  br label %28

28:                                               ; preds = %23, %7
  %29 = phi i32 [ %27, %23 ], [ %8, %7 ]
  %30 = phi i32 [ %26, %23 ], [ %9, %7 ]
  %31 = phi i32 [ %25, %23 ], [ %10, %7 ]
  %32 = add nuw nsw i32 %11, 1
  %33 = icmp eq i32 %32, 64
  br i1 %33, label %34, label %7

34:                                               ; preds = %28, %22
  %35 = phi i32 [ %10, %22 ], [ %31, %28 ]
  %36 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %35, ptr noundef nonnull @.str.8) #11
  %37 = add i32 %36, %35
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crash_notes_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr @crash_notes, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 @per_cpu_ptr_to_phys(ptr noundef %11) #11
  %13 = zext i32 %12 to i64
  %14 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, i64 noundef %13) #11
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @per_cpu_ptr_to_phys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crash_notes_size_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 180) #11
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @device_create_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name_vargs(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_cpus_attr(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.cpu_attr, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %2, ptr noundef %5, i32 noundef %6) #11
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @print_cpus_kernel_max(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 15) #11
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @print_cpus_offline(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = load i32, ptr @__cpu_possible_mask, align 4
  %6 = load i32, ptr @__cpu_online_mask, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, 65535
  %9 = and i32 %8, %7
  store i32 %9, ptr %4, align 4
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %10, ptr noundef nonnull %4) #11
  %12 = load i32, ptr @total_cpus, align 4
  %13 = icmp ne i32 %12, 0
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = icmp ult i32 %14, %12
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %11, ptr noundef nonnull @.str.20) #11
  %19 = add i32 %18, %11
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = load i32, ptr @total_cpus, align 4
  %22 = add i32 %21, -1
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %19, ptr noundef nonnull @.str.21, i32 noundef %20) #11
  %26 = add i32 %25, %19
  br label %30

27:                                               ; preds = %17
  %28 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %19, ptr noundef nonnull @.str.22, i32 noundef %20, i32 noundef %22) #11
  %29 = add i32 %28, %19
  br label %30

30:                                               ; preds = %27, %24, %3
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ], [ %11, %3 ]
  %32 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %31, ptr noundef nonnull @.str.8) #11
  %33 = add i32 %32, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @print_cpus_isolated(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = tail call ptr @housekeeping_cpumask(i32 noundef 32) #11
  %6 = load i32, ptr @__cpu_possible_mask, align 4
  %7 = load i32, ptr %5, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, 65535
  %10 = and i32 %9, %8
  store i32 %10, ptr %4, align 4
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %11, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { cold }
attributes #15 = { cold nounwind }

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
!8 = !{!"auto-init"}
