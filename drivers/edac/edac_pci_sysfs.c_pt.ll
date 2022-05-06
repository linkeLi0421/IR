; ModuleID = '/llk/IR/drivers/edac/edac_pci_sysfs.c_pt.bc'
source_filename = "../drivers/edac/edac_pci_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_pci_handle_pe:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_pci_handle_pe\22\09\09\09\09\09"
module asm "__kstrtabns_edac_pci_handle_pe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_pci_handle_npe:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_pci_handle_npe\22\09\09\09\09\09"
module asm "__kstrtabns_edac_pci_handle_npe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.edac_pci_dev_attribute = type { %struct.attribute, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.instance_attribute = type { %struct.attribute, ptr, ptr }
%struct.edac_pci_ctl_info = type { %struct.list_head, i32, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], %struct.edac_pci_counter, %struct.kobject }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.edac_pci_counter = type { %struct.atomic_t, %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@check_pci_errors = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@pci_parity_count = internal global %struct.atomic_t zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EDAC: PCI Parity Error\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\014EDAC PCI%d: Parity Error ctl: %s %d: %s\0A\00", align 1
@__kstrtab_edac_pci_handle_pe = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_pci_handle_pe = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_pci_handle_pe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_pci_handle_pe to i32), ptr @__kstrtab_edac_pci_handle_pe, ptr @__kstrtabns_edac_pci_handle_pe }, section "___ksymtab_gpl+edac_pci_handle_pe", align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"\014EDAC PCI%d: Non-Parity Error ctl: %s %d: %s\0A\00", align 1
@__kstrtab_edac_pci_handle_npe = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_pci_handle_npe = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_pci_handle_npe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_pci_handle_npe to i32), ptr @__kstrtab_edac_pci_handle_npe, ptr @__kstrtabns_edac_pci_handle_npe }, section "___ksymtab_gpl+edac_pci_handle_npe", align 4
@__param_str_check_pci_errors = internal constant [27 x i8] c"edac_core.check_pci_errors\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_check_pci_errors = internal constant %struct.kernel_param { ptr @__param_str_check_pci_errors, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @check_pci_errors } }, section "__param", align 4
@__UNIQUE_ID_check_pci_errorstype228 = internal constant [40 x i8] c"edac_core.parmtype=check_pci_errors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_check_pci_errors229 = internal constant [76 x i8] c"edac_core.parm=check_pci_errors:Check for PCI bus parity errors: 0=off 1=on\00", section ".modinfo", align 1
@__param_str_edac_pci_panic_on_pe = internal constant [31 x i8] c"edac_core.edac_pci_panic_on_pe\00", align 1
@edac_pci_panic_on_pe = internal global i32 0, align 4
@__param_edac_pci_panic_on_pe = internal constant %struct.kernel_param { ptr @__param_str_edac_pci_panic_on_pe, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @edac_pci_panic_on_pe } }, section "__param", align 4
@__UNIQUE_ID_edac_pci_panic_on_petype230 = internal constant [44 x i8] c"edac_core.parmtype=edac_pci_panic_on_pe:int\00", section ".modinfo", align 1
@__UNIQUE_ID_edac_pci_panic_on_pe231 = internal constant [78 x i8] c"edac_core.parm=edac_pci_panic_on_pe:Panic on PCI Bus Parity error: 0=off 1=on\00", section ".modinfo", align 1
@edac_pci_sysfs_refcount = internal global %struct.atomic_t zeroinitializer, align 4
@edac_pci_top_main_kobj = internal unnamed_addr global ptr null, align 4
@ktype_edac_pci_main_kobj = internal global %struct.kobj_type { ptr @edac_pci_release_main_kobj, ptr @edac_pci_sysfs_ops, ptr @edac_pci_attr, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@edac_pci_sysfs_ops = internal constant %struct.sysfs_ops { ptr @edac_pci_dev_show, ptr @edac_pci_dev_store }, align 4
@edac_pci_attr = internal global [7 x ptr] [ptr @edac_pci_attr_check_pci_errors, ptr @edac_pci_attr_edac_pci_log_pe, ptr @edac_pci_attr_edac_pci_log_npe, ptr @edac_pci_attr_edac_pci_panic_on_pe, ptr @edac_pci_attr_pci_parity_count, ptr @edac_pci_attr_pci_nonparity_count, ptr null], align 4
@edac_pci_attr_check_pci_errors = internal global %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @check_pci_errors, ptr @edac_pci_int_show, ptr @edac_pci_int_store }, align 4
@edac_pci_attr_edac_pci_log_pe = internal global %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @edac_pci_log_pe, ptr @edac_pci_int_show, ptr @edac_pci_int_store }, align 4
@edac_pci_attr_edac_pci_log_npe = internal global %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.8, i16 420 }, ptr @edac_pci_log_npe, ptr @edac_pci_int_show, ptr @edac_pci_int_store }, align 4
@edac_pci_attr_edac_pci_panic_on_pe = internal global %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.9, i16 420 }, ptr @edac_pci_panic_on_pe, ptr @edac_pci_int_show, ptr @edac_pci_int_store }, align 4
@edac_pci_attr_pci_parity_count = internal global %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @pci_parity_count, ptr @edac_pci_int_show, ptr null }, align 4
@edac_pci_attr_pci_nonparity_count = internal global %struct.edac_pci_dev_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @pci_nonparity_count, ptr @edac_pci_int_show, ptr null }, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"check_pci_errors\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"edac_pci_log_pe\00", align 1
@edac_pci_log_pe = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"edac_pci_log_npe\00", align 1
@edac_pci_log_npe = internal global i32 1, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"edac_pci_panic_on_pe\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"pci_parity_count\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"pci_nonparity_count\00", align 1
@pci_nonparity_count = internal global %struct.atomic_t zeroinitializer, align 4
@ktype_pci_instance = internal global %struct.kobj_type { ptr @edac_pci_instance_release, ptr @pci_instance_ops, ptr @pci_instance_attr, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"pci%d\00", align 1
@pci_instance_ops = internal constant %struct.sysfs_ops { ptr @edac_pci_instance_show, ptr @edac_pci_instance_store }, align 4
@pci_instance_attr = internal global [3 x ptr] [ptr @attr_instance_pe_count, ptr @attr_instance_npe_count, ptr null], align 4
@attr_instance_pe_count = internal global %struct.instance_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @instance_pe_count_show, ptr null }, align 4
@attr_instance_npe_count = internal global %struct.instance_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @instance_npe_count_show, ptr null }, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"pe_count\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"npe_count\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"\012EDAC PCI: Signaled System Error on %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"\012EDAC PCI: Master Data Parity Error on %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"\012EDAC PCI: Detected Parity Error on %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"\012EDAC PCI: Bridge Signaled System Error on %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"\012EDAC PCI: Bridge Master Data Parity Error on %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"\012EDAC PCI: Bridge Detected Parity Error on %s\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_check_pci_errors229, ptr @__UNIQUE_ID_check_pci_errorstype228, ptr @__UNIQUE_ID_edac_pci_panic_on_pe231, ptr @__UNIQUE_ID_edac_pci_panic_on_petype230, ptr @__ksymtab_edac_pci_handle_npe, ptr @__ksymtab_edac_pci_handle_pe, ptr @__param_check_pci_errors, ptr @__param_edac_pci_panic_on_pe], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_pci_get_check_errors() local_unnamed_addr #0 {
  %1 = load i32, ptr @check_pci_errors, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_pci_get_poll_msec() local_unnamed_addr #1 {
  ret i32 1000
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_pci_create_sysfs(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @edac_pci_sysfs_refcount) #10, !srcloc !9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount, ptr nonnull @edac_pci_sysfs_refcount, i32 1, ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount) #10, !srcloc !10
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = tail call ptr @edac_get_sysfs_subsys() #10
  %8 = tail call zeroext i1 @try_module_get(ptr noundef null) #10
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 36) #11
  store ptr %11, ptr @edac_pci_top_main_kobj, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bus_type, ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %11, ptr noundef nonnull @ktype_edac_pci_main_kobj, ptr noundef %15, ptr noundef nonnull @.str.4) #10
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  br i1 %17, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call i32 @kobject_uevent(ptr noundef %18, i32 noundef 0) #10
  br label %27

21:                                               ; preds = %13
  tail call void @kobject_put(ptr noundef %18) #10
  br label %22

22:                                               ; preds = %21, %9
  %23 = phi i32 [ %16, %21 ], [ -12, %9 ]
  tail call void @module_put(ptr noundef null) #10
  br label %24

24:                                               ; preds = %22, %6
  %25 = phi i32 [ %23, %22 ], [ -19, %6 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @edac_pci_sysfs_refcount) #10, !srcloc !9
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount, ptr nonnull @edac_pci_sysfs_refcount, i32 1, ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount) #10, !srcloc !12
  br label %55

27:                                               ; preds = %19, %1
  %28 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  %31 = tail call ptr @kobject_get(ptr noundef %30) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  %35 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %2, ptr noundef nonnull @ktype_pci_instance, ptr noundef %34, ptr noundef nonnull @.str.12, i32 noundef %29) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  br label %45

39:                                               ; preds = %33
  %40 = tail call i32 @kobject_uevent(ptr noundef %2, i32 noundef 0) #10
  %41 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @sysfs_create_link(ptr noundef %2, ptr noundef %42, ptr noundef nonnull @.str) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %39, %37
  %46 = phi ptr [ %38, %37 ], [ %2, %39 ]
  %47 = phi i32 [ %35, %37 ], [ %43, %39 ]
  tail call void @kobject_put(ptr noundef %46) #10
  br label %48

48:                                               ; preds = %45, %27
  %49 = phi i32 [ -19, %27 ], [ %47, %45 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @edac_pci_sysfs_refcount) #10, !srcloc !9
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount, ptr nonnull @edac_pci_sysfs_refcount, i32 1, ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount) #10, !srcloc !14
  %51 = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  tail call void @kobject_put(ptr noundef %54) #10
  br label %55

55:                                               ; preds = %53, %48, %39, %24
  %56 = phi i32 [ %25, %24 ], [ 0, %39 ], [ %49, %48 ], [ %49, %53 ]
  ret i32 %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_pci_remove_sysfs(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 15
  tail call void @sysfs_remove_link(ptr noundef %2, ptr noundef nonnull @.str) #10
  tail call void @kobject_put(ptr noundef %2) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @edac_pci_sysfs_refcount) #10, !srcloc !9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount, ptr nonnull @edac_pci_sysfs_refcount, i32 1, ptr nonnull elementtype(i32) @edac_pci_sysfs_refcount) #10, !srcloc !14
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  tail call void @kobject_put(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_pci_do_parity_check() local_unnamed_addr #2 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = load i32, ptr @check_pci_errors, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %164, label %8

8:                                                ; preds = %0
  %9 = load volatile i32, ptr @pci_parity_count, align 4
  %10 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %157, label %12

12:                                               ; preds = %154, %8
  %13 = phi ptr [ %155, %154 ], [ %10, %8 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !16
  %14 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 0, ptr %3, align 2, !annotation !16
  %15 = call i32 @pci_read_config_word(ptr noundef nonnull %13, i32 noundef 6, ptr noundef nonnull %3) #10
  %16 = load i16, ptr %3, align 2
  %17 = icmp eq i16 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !16
  %19 = call i32 @pci_read_config_dword(ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %4) #10
  %20 = load i32, ptr %4, align 4
  %21 = icmp eq i32 %20, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = load i16, ptr %3, align 2
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi i16 [ %23, %22 ], [ %16, %12 ]
  %26 = and i16 %25, -16128
  store i16 %26, ptr %3, align 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = call i32 @pci_write_config_word(ptr noundef nonnull %13, i32 noundef 6, i16 noundef zeroext %26) #10
  %30 = load i16, ptr %3, align 2
  br label %31

31:                                               ; preds = %28, %24, %18
  %32 = phi i16 [ 0, %18 ], [ %30, %28 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %33 = call i32 @pci_read_config_byte(ptr noundef nonnull %13, i32 noundef 14, ptr noundef nonnull %5) #10
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #10, !srcloc !18
  %34 = zext i16 %32 to i32
  %35 = icmp eq i16 %32, 0
  br i1 %35, label %83, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 49
  %38 = load i40, ptr %37, align 1
  %39 = and i40 %38, 512
  %40 = icmp eq i40 %39, 0
  br i1 %40, label %41, label %83

41:                                               ; preds = %36
  %42 = and i32 %34, 16384
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi ptr [ %50, %48 ], [ %46, %44 ]
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %52) #12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pci_nonparity_count) #10, !srcloc !9
  %54 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_nonparity_count, ptr nonnull @pci_nonparity_count, i32 1, ptr nonnull elementtype(i32) @pci_nonparity_count) #10, !srcloc !19
  br label %55

55:                                               ; preds = %51, %41
  %56 = and i32 %34, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %64 = load ptr, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi ptr [ %64, %62 ], [ %60, %58 ]
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %66) #12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pci_parity_count) #10, !srcloc !9
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_parity_count, ptr nonnull @pci_parity_count, i32 1, ptr nonnull elementtype(i32) @pci_parity_count) #10, !srcloc !19
  br label %69

69:                                               ; preds = %65, %55
  %70 = and i32 %34, 32768
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi ptr [ %78, %76 ], [ %74, %72 ]
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %80) #12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pci_parity_count) #10, !srcloc !9
  %82 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_parity_count, ptr nonnull @pci_parity_count, i32 1, ptr nonnull elementtype(i32) @pci_parity_count) #10, !srcloc !19
  br label %83

83:                                               ; preds = %79, %69, %36, %31
  %84 = load i8, ptr %5, align 1
  %85 = and i8 %84, 127
  %86 = icmp eq i8 %85, 1
  br i1 %86, label %87, label %154

87:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %1) #10
  store i16 0, ptr %1, align 2, !annotation !16
  %88 = call i32 @pci_read_config_word(ptr noundef nonnull %13, i32 noundef 30, ptr noundef nonnull %1) #10
  %89 = load i16, ptr %1, align 2
  %90 = icmp eq i16 %89, -1
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !16
  %92 = call i32 @pci_read_config_dword(ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull %2) #10
  %93 = load i32, ptr %2, align 4
  %94 = icmp eq i32 %93, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = load i16, ptr %1, align 2
  br label %97

97:                                               ; preds = %95, %87
  %98 = phi i16 [ %96, %95 ], [ %89, %87 ]
  %99 = and i16 %98, -16128
  store i16 %99, ptr %1, align 2
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %91
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %1) #10
  br label %154

102:                                              ; preds = %97
  %103 = call i32 @pci_write_config_word(ptr noundef nonnull %13, i32 noundef 30, i16 noundef zeroext %99) #10
  %104 = load i16, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %1) #10
  %105 = zext i16 %104 to i32
  %106 = icmp eq i16 %104, 0
  br i1 %106, label %154, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 49
  %109 = load i40, ptr %108, align 1
  %110 = and i40 %109, 512
  %111 = icmp eq i40 %110, 0
  br i1 %111, label %112, label %154

112:                                              ; preds = %107
  %113 = and i32 %105, 16384
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %121 = load ptr, ptr %120, align 4
  br label %122

122:                                              ; preds = %119, %115
  %123 = phi ptr [ %121, %119 ], [ %117, %115 ]
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %123) #12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pci_nonparity_count) #10, !srcloc !9
  %125 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_nonparity_count, ptr nonnull @pci_nonparity_count, i32 1, ptr nonnull elementtype(i32) @pci_nonparity_count) #10, !srcloc !19
  br label %126

126:                                              ; preds = %122, %112
  %127 = and i32 %105, 256
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %135 = load ptr, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %129
  %137 = phi ptr [ %135, %133 ], [ %131, %129 ]
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %137) #12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pci_parity_count) #10, !srcloc !9
  %139 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_parity_count, ptr nonnull @pci_parity_count, i32 1, ptr nonnull elementtype(i32) @pci_parity_count) #10, !srcloc !19
  br label %140

140:                                              ; preds = %136, %126
  %141 = and i32 %105, 32768
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %149 = load ptr, ptr %148, align 4
  br label %150

150:                                              ; preds = %147, %143
  %151 = phi ptr [ %149, %147 ], [ %145, %143 ]
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %151) #12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pci_parity_count) #10, !srcloc !9
  %153 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_parity_count, ptr nonnull @pci_parity_count, i32 1, ptr nonnull elementtype(i32) @pci_parity_count) #10, !srcloc !19
  br label %154

154:                                              ; preds = %150, %140, %107, %102, %101, %83
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %155 = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %13) #10
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %12

157:                                              ; preds = %154, %8
  %158 = load i32, ptr @edac_pci_panic_on_pe, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load volatile i32, ptr @pci_parity_count, align 4
  %162 = icmp eq i32 %9, %161
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #13
  unreachable

164:                                              ; preds = %160, %157, %0
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_pci_clear_parity_errors() local_unnamed_addr #2 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef null) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %47, %0
  %9 = phi ptr [ %48, %47 ], [ %6, %0 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i16 0, ptr %3, align 2, !annotation !16
  %10 = call i32 @pci_read_config_word(ptr noundef nonnull %9, i32 noundef 6, ptr noundef nonnull %3) #10
  %11 = load i16, ptr %3, align 2
  %12 = icmp eq i16 %11, -1
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !16
  %14 = call i32 @pci_read_config_dword(ptr noundef nonnull %9, i32 noundef 0, ptr noundef nonnull %4) #10
  %15 = load i32, ptr %4, align 4
  %16 = icmp eq i32 %15, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i16, ptr %3, align 2
  br label %19

19:                                               ; preds = %17, %8
  %20 = phi i16 [ %18, %17 ], [ %11, %8 ]
  %21 = and i16 %20, -16128
  store i16 %21, ptr %3, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call i32 @pci_write_config_word(ptr noundef nonnull %9, i32 noundef 6, i16 noundef zeroext %21) #10
  br label %25

25:                                               ; preds = %23, %19, %13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  %26 = call i32 @pci_read_config_byte(ptr noundef nonnull %9, i32 noundef 14, ptr noundef nonnull %5) #10
  %27 = load i8, ptr %5, align 1
  %28 = and i8 %27, 127
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %1) #10
  store i16 0, ptr %1, align 2, !annotation !16
  %31 = call i32 @pci_read_config_word(ptr noundef nonnull %9, i32 noundef 30, ptr noundef nonnull %1) #10
  %32 = load i16, ptr %1, align 2
  %33 = icmp eq i16 %32, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !16
  %35 = call i32 @pci_read_config_dword(ptr noundef nonnull %9, i32 noundef 0, ptr noundef nonnull %2) #10
  %36 = load i32, ptr %2, align 4
  %37 = icmp eq i32 %36, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i16, ptr %1, align 2
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi i16 [ %39, %38 ], [ %32, %30 ]
  %42 = and i16 %41, -16128
  store i16 %42, ptr %1, align 2
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 @pci_write_config_word(ptr noundef nonnull %9, i32 noundef 30, i16 noundef zeroext %42) #10
  br label %46

46:                                               ; preds = %44, %40, %34
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %1) #10
  br label %47

47:                                               ; preds = %46, %25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %48 = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef nonnull %9) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %8

50:                                               ; preds = %47, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_pci_handle_pe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #10, !srcloc !9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #10, !srcloc !19
  %5 = load i32, ptr @edac_pci_log_pe, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %9, ptr noundef %11, i32 noundef %9, ptr noundef %1) #12
  br label %13

13:                                               ; preds = %7, %2
  tail call void @edac_pci_do_parity_check()
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_pci_handle_npe(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 14, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #10, !srcloc !9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #10, !srcloc !19
  %5 = load i32, ptr @edac_pci_log_npe, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %9, ptr noundef %11, i32 noundef %9, ptr noundef %1) #12
  br label %13

13:                                               ; preds = %7, %2
  tail call void @edac_pci_do_parity_check()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_get_sysfs_subsys() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edac_pci_release_main_kobj(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #10
  tail call void @module_put(ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_pci_dev_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.edac_pci_dev_attribute, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.edac_pci_dev_attribute, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %5(ptr noundef %9, ptr noundef %2) #10
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_pci_dev_store(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.edac_pci_dev_attribute, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.edac_pci_dev_attribute, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %6(ptr noundef %10, ptr noundef %2, i32 noundef %3) #10
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ -5, %4 ]
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_pci_int_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = load i32, ptr %0, align 4
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_pci_int_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef returned %2) #2 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %5, -58
  %7 = icmp ult i32 %6, -10
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @simple_strtoul(ptr noundef %1, ptr noundef null, i32 noundef 0) #10
  store i32 %9, ptr %0, align 4
  br label %10

10:                                               ; preds = %8, %3
  ret i32 %2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edac_pci_instance_release(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -148
  %3 = load ptr, ptr @edac_pci_top_main_kobj, align 4
  tail call void @kobject_put(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_pci_instance_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.instance_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -148
  %9 = tail call i32 %5(ptr noundef %8, ptr noundef %2) #10
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ -5, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_pci_instance_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.instance_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -148
  %10 = tail call i32 %6(ptr noundef %9, ptr noundef %2, i32 noundef %3) #10
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -5, %4 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @instance_pe_count_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 14
  %4 = load volatile i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @instance_npe_count_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 14, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { cold noreturn nounwind }

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
!8 = !{i64 2148158360}
!9 = !{i64 559128, i64 2148049099, i64 2148049125, i64 2148049172, i64 2148049194, i64 2148049222, i64 2148049242}
!10 = !{i64 2148061198, i64 2148061230, i64 2148061259, i64 2148061293, i64 2148061324, i64 2148061347}
!11 = !{i64 2148158563}
!12 = !{i64 2148062871, i64 2148062897, i64 2148062926, i64 2148062960, i64 2148062991, i64 2148063014}
!13 = !{i64 2148161193}
!14 = !{i64 2148063555, i64 2148063587, i64 2148063616, i64 2148063650, i64 2148063681, i64 2148063704}
!15 = !{i64 2148161396}
!16 = !{!"auto-init"}
!17 = !{i64 464806, i64 464867}
!18 = !{i64 467823}
!19 = !{i64 2148060514, i64 2148060540, i64 2148060569, i64 2148060603, i64 2148060634, i64 2148060657}
