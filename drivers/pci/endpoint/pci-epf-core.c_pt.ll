; ModuleID = '/llk/IR/drivers/pci/endpoint/pci-epf-core.c_pt.bc'
source_filename = "../drivers/pci/endpoint/pci-epf-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epf_type_add_cfs:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epf_type_add_cfs\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epf_type_add_cfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epf_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epf_unbind\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epf_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epf_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epf_bind\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epf_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epf_add_vepf:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epf_add_vepf\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epf_add_vepf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epf_remove_vepf:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epf_remove_vepf\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epf_remove_vepf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epf_free_space:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epf_free_space\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epf_free_space:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epf_alloc_space:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epf_alloc_space\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epf_alloc_space:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epf_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epf_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epf_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pci_epf_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__pci_epf_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___pci_epf_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epf_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epf_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epf_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_epf_create:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_epf_create\22\09\09\09\09\09"
module asm "__kstrtabns_pci_epf_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pci_epf = type { %struct.device, ptr, ptr, [6 x %struct.pci_epf_bar], i8, i16, i8, i8, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, %struct.mutex, ptr, %struct.list_head, [6 x %struct.pci_epf_bar], i8, ptr, i32, i32, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_epf_bar = type { i32, ptr, i32, i32, i32 }
%struct.pci_epf_driver = type { ptr, ptr, %struct.device_driver, ptr, ptr, %struct.list_head, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_epf_ops = type { ptr, ptr, ptr }
%struct.pci_epc = type { %struct.device, %struct.list_head, ptr, ptr, ptr, i32, i8, ptr, ptr, %struct.mutex, i32, %struct.atomic_notifier_head }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.pci_epf_device_id = type { [20 x i8], i32 }

@.str = private unnamed_addr constant [32 x i8] c"epf device not bound to driver\0A\00", align 1
@__kstrtab_pci_epf_type_add_cfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epf_type_add_cfs = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epf_type_add_cfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epf_type_add_cfs to i32), ptr @__kstrtab_pci_epf_type_add_cfs, ptr @__kstrtabns_pci_epf_type_add_cfs }, section "___ksymtab_gpl+pci_epf_type_add_cfs", align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"drivers/pci/endpoint/pci-epf-core.c\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s %s: epf device not bound to driver\0A\00", align 1
@__kstrtab_pci_epf_unbind = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epf_unbind = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epf_unbind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epf_unbind to i32), ptr @__kstrtab_pci_epf_unbind, ptr @__kstrtabns_pci_epf_unbind }, section "___ksymtab_gpl+pci_epf_unbind", align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid virtual function number\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"No support for virt function\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"PF%d: Exceeds max vfunc number\0A\00", align 1
@__kstrtab_pci_epf_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epf_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epf_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epf_bind to i32), ptr @__kstrtab_pci_epf_bind, ptr @__kstrtabns_pci_epf_bind }, section "___ksymtab_gpl+pci_epf_bind", align 4
@__kstrtab_pci_epf_add_vepf = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epf_add_vepf = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epf_add_vepf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epf_add_vepf to i32), ptr @__kstrtab_pci_epf_add_vepf, ptr @__kstrtabns_pci_epf_add_vepf }, section "___ksymtab_gpl+pci_epf_add_vepf", align 4
@__kstrtab_pci_epf_remove_vepf = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epf_remove_vepf = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epf_remove_vepf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epf_remove_vepf to i32), ptr @__kstrtab_pci_epf_remove_vepf, ptr @__kstrtabns_pci_epf_remove_vepf }, section "___ksymtab_gpl+pci_epf_remove_vepf", align 4
@__kstrtab_pci_epf_free_space = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epf_free_space = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epf_free_space = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epf_free_space to i32), ptr @__kstrtab_pci_epf_free_space, ptr @__kstrtabns_pci_epf_free_space }, section "___ksymtab_gpl+pci_epf_free_space", align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to allocate mem space\0A\00", align 1
@__kstrtab_pci_epf_alloc_space = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epf_alloc_space = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epf_alloc_space = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epf_alloc_space to i32), ptr @__kstrtab_pci_epf_alloc_space, ptr @__kstrtabns_pci_epf_alloc_space }, section "___ksymtab_gpl+pci_epf_alloc_space", align 4
@__kstrtab_pci_epf_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epf_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epf_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epf_unregister_driver to i32), ptr @__kstrtab_pci_epf_unregister_driver, ptr @__kstrtabns_pci_epf_unregister_driver }, section "___ksymtab_gpl+pci_epf_unregister_driver", align 4
@pci_epf_bus_type = internal global %struct.bus_type { ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_epf_device_match, ptr null, ptr @pci_epf_device_probe, ptr null, ptr @pci_epf_device_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab___pci_epf_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___pci_epf_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___pci_epf_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pci_epf_register_driver to i32), ptr @__kstrtab___pci_epf_register_driver, ptr @__kstrtabns___pci_epf_register_driver }, section "___ksymtab_gpl+__pci_epf_register_driver", align 4
@__kstrtab_pci_epf_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epf_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epf_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epf_destroy to i32), ptr @__kstrtab_pci_epf_destroy, ptr @__kstrtabns_pci_epf_destroy }, section "___ksymtab_gpl+pci_epf_destroy", align 4
@pci_epf_type = internal constant %struct.device_type { ptr null, ptr null, ptr null, ptr null, ptr @pci_epf_dev_release, ptr null }, align 4
@pci_epf_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"&epf->lock\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_pci_epf_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_epf_create = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_epf_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_epf_create to i32), ptr @__kstrtab_pci_epf_create, ptr @__kstrtabns_pci_epf_create }, section "___ksymtab_gpl+pci_epf_create", align 4
@__initcall__kmod_pci_epf_core__228_561_pci_epf_init6 = internal global ptr @pci_epf_init, section ".initcall6.init", align 4
@__exitcall_pci_epf_exit = internal global ptr @pci_epf_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [41 x i8] c"pci_epf_core.description=PCI EPF Library\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [59 x i8] c"pci_epf_core.author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [52 x i8] c"pci_epf_core.file=drivers/pci/endpoint/pci-epf-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [28 x i8] c"pci_epf_core.license=GPL v2\00", section ".modinfo", align 1
@pci_epf_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_epf_mutex, i64 12), ptr getelementptr (i8, ptr @pci_epf_mutex, i64 12) } }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"pci-epf\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"\013failed to register pci epf bus --> %d\0A\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_pci_epf_exit, ptr @__initcall__kmod_pci_epf_core__228_561_pci_epf_init6, ptr @__ksymtab___pci_epf_register_driver, ptr @__ksymtab_pci_epf_add_vepf, ptr @__ksymtab_pci_epf_alloc_space, ptr @__ksymtab_pci_epf_bind, ptr @__ksymtab_pci_epf_create, ptr @__ksymtab_pci_epf_destroy, ptr @__ksymtab_pci_epf_free_space, ptr @__ksymtab_pci_epf_remove_vepf, ptr @__ksymtab_pci_epf_type_add_cfs, ptr @__ksymtab_pci_epf_unbind, ptr @__ksymtab_pci_epf_unregister_driver, ptr @pci_epf_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_epf_type_add_cfs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #10
  br label %21

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_epf_driver, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pci_epf_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %14) #11
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.pci_epf_driver, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pci_epf_ops, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr %19(ptr noundef %0, ptr noundef %1) #11
  tail call void @mutex_unlock(ptr noundef %14) #11
  br label %21

21:                                               ; preds = %13, %7, %6
  %22 = phi ptr [ %20, %13 ], [ null, %6 ], [ null, %7 ]
  ret ptr %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epf_unbind(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = tail call ptr @dev_driver_string(ptr noundef %0) #11
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %6, ptr noundef %13) #11
  br label %49

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 22
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %35, label %19

19:                                               ; preds = %32, %14
  %20 = phi ptr [ %33, %32 ], [ %17, %14 ]
  %21 = getelementptr i8, ptr %20, i32 180
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %20, i32 -620
  %26 = getelementptr i8, ptr %20, i32 -4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.pci_epf_driver, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.pci_epf_ops, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %25) #11
  br label %32

32:                                               ; preds = %24, %19
  %33 = load ptr, ptr %20, align 4
  %34 = icmp eq ptr %33, %16
  br i1 %34, label %35, label %19

35:                                               ; preds = %32, %14
  %36 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 19
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.pci_epf_driver, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.pci_epf_ops, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %0) #11
  br label %45

45:                                               ; preds = %39, %35
  tail call void @mutex_unlock(ptr noundef %15) #11
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.pci_epf_driver, ptr %46, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  tail call void @module_put(ptr noundef %48) #11
  br label %49

49:                                               ; preds = %45, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epf_bind(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = tail call ptr @dev_driver_string(ptr noundef %0) #11
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 4
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %6, ptr noundef %13) #11
  br label %101

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.pci_epf_driver, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call zeroext i1 @try_module_get(ptr noundef %16) #11
  br i1 %17, label %18, label %101

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 22
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %90, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 8
  %25 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 14
  %27 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 17
  br label %28

28:                                               ; preds = %86, %23
  %29 = phi ptr [ %21, %23 ], [ %88, %86 ]
  %30 = getelementptr i8, ptr %29, i32 -620
  %31 = getelementptr i8, ptr %29, i32 -15
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #10
  br label %99

35:                                               ; preds = %28
  %36 = load ptr, ptr %24, align 8
  %37 = load i8, ptr %25, align 4
  %38 = icmp eq ptr %36, null
  %39 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  %40 = or i1 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.pci_epc, ptr %36, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #10
  br label %99

46:                                               ; preds = %41
  %47 = zext i8 %37 to i32
  %48 = getelementptr i8, ptr %43, i32 %47
  %49 = load i8, ptr %48, align 1
  %50 = icmp ugt i8 %32, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %52) #10
  br label %99

53:                                               ; preds = %46, %35
  %54 = load ptr, ptr %26, align 4
  %55 = load i8, ptr %27, align 8
  %56 = icmp eq ptr %54, null
  %57 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  %58 = or i1 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.pci_epc, ptr %54, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #10
  br label %99

64:                                               ; preds = %59
  %65 = zext i8 %55 to i32
  %66 = getelementptr i8, ptr %61, i32 %65
  %67 = load i8, ptr %66, align 1
  %68 = icmp ugt i8 %32, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = zext i8 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %70) #10
  br label %99

71:                                               ; preds = %64, %53
  %72 = getelementptr i8, ptr %29, i32 -16
  store i8 %37, ptr %72, align 4
  %73 = load i8, ptr %27, align 8
  %74 = getelementptr i8, ptr %29, i32 172
  store i8 %73, ptr %74, align 8
  %75 = load ptr, ptr %24, align 8
  %76 = getelementptr i8, ptr %29, i32 -12
  store ptr %75, ptr %76, align 8
  %77 = load ptr, ptr %26, align 4
  %78 = getelementptr i8, ptr %29, i32 40
  store ptr %77, ptr %78, align 4
  %79 = getelementptr i8, ptr %29, i32 -4
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.pci_epf_driver, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 %83(ptr noundef %30) #11
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %71
  %87 = getelementptr i8, ptr %29, i32 180
  store i32 1, ptr %87, align 8
  %88 = load ptr, ptr %29, align 4
  %89 = icmp eq ptr %88, %20
  br i1 %89, label %90, label %28

90:                                               ; preds = %86, %18
  %91 = load ptr, ptr %2, align 8
  %92 = getelementptr inbounds %struct.pci_epf_driver, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = tail call i32 %94(ptr noundef %0) #11
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 19
  store i32 1, ptr %98, align 8
  tail call void @mutex_unlock(ptr noundef %19) #11
  br label %101

99:                                               ; preds = %90, %71, %69, %63, %51, %45, %34
  %100 = phi i32 [ -22, %34 ], [ -22, %69 ], [ -22, %63 ], [ -22, %51 ], [ -22, %45 ], [ %95, %90 ], [ %84, %71 ]
  tail call void @mutex_unlock(ptr noundef %19) #11
  tail call void @pci_epf_unbind(ptr noundef %0)
  br label %101

101:                                              ; preds = %99, %97, %14, %12
  %102 = phi i32 [ %100, %99 ], [ 0, %97 ], [ -22, %12 ], [ -11, %14 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_epf_add_vepf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  %8 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %46, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %31) #11
  %32 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 21
  %33 = tail call i32 @_find_first_zero_bit_le(ptr noundef %32, i32 noundef 32) #11
  %34 = icmp ugt i32 %33, 31
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  tail call void @_set_bit(i32 noundef %33, ptr noundef %32) #11
  %36 = trunc i32 %33 to i8
  %37 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 7
  store i8 %36, ptr %37, align 1
  store ptr %0, ptr %19, align 4
  %38 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 20
  store i32 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 11
  %40 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 22
  %41 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 22, i32 1
  %42 = load ptr, ptr %41, align 4
  store ptr %39, ptr %41, align 4
  store ptr %40, ptr %39, align 4
  %43 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 11, i32 1
  store ptr %42, ptr %43, align 4
  store volatile ptr %39, ptr %42, align 4
  br label %44

44:                                               ; preds = %35, %30
  %45 = phi i32 [ 0, %35 ], [ -22, %30 ]
  tail call void @mutex_unlock(ptr noundef %31) #11
  br label %46

46:                                               ; preds = %44, %26, %22, %18, %14, %10, %6, %2
  %47 = phi i32 [ -22, %6 ], [ -22, %2 ], [ -16, %18 ], [ -16, %14 ], [ -16, %10 ], [ -16, %26 ], [ -16, %22 ], [ %45, %44 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epf_remove_vepf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  %8 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 7
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef %14, ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 11
  %17 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 11, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef %11) #11
  br label %21

21:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epf_free_space(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  %8 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 14
  %11 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 16
  %12 = select i1 %7, ptr %9, ptr %11
  %13 = select i1 %7, ptr %8, ptr %10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.pci_epf_bar, ptr %12, i32 %2
  %18 = getelementptr %struct.pci_epf_bar, ptr %12, i32 %2, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %17, align 4
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef %19, ptr noundef nonnull %1, i32 noundef %20, i32 noundef 0) #11
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %17, i8 0, i64 20, i1 false)
  br label %21

21:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_epf_alloc_space(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = tail call i32 @llvm.umax.i32(i32 %1, i32 128)
  %8 = icmp eq i32 %3, 0
  %9 = add i32 %7, -1
  br i1 %8, label %14, label %10

10:                                               ; preds = %5
  %11 = add i32 %9, %3
  %12 = sub i32 0, %3
  %13 = and i32 %11, %12
  br label %18

14:                                               ; preds = %5
  %15 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 false) #11, !range !9
  %16 = sub nuw nsw i32 32, %15
  %17 = shl nuw i32 1, %16
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %13, %10 ], [ %17, %14 ]
  %20 = icmp eq i32 %4, 0
  %21 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 8
  %22 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 14
  %23 = select i1 %20, ptr %21, ptr %22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = call ptr @dma_alloc_attrs(ptr noundef %26, i32 noundef %19, ptr noundef nonnull %6, i32 noundef 3264, i32 noundef 0) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.6) #10
  br label %39

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 3
  %32 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 16
  %33 = select i1 %20, ptr %31, ptr %32
  %34 = load i32, ptr %6, align 4
  %35 = getelementptr %struct.pci_epf_bar, ptr %33, i32 %2
  store i32 %34, ptr %35, align 4
  %36 = getelementptr %struct.pci_epf_bar, ptr %33, i32 %2, i32 1
  store ptr %27, ptr %36, align 4
  %37 = getelementptr %struct.pci_epf_bar, ptr %33, i32 %2, i32 2
  store i32 %19, ptr %37, align 4
  %38 = getelementptr %struct.pci_epf_bar, ptr %33, i32 %2, i32 3
  store i32 %2, ptr %38, align 4
  br label %39

39:                                               ; preds = %30, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epf_unregister_driver(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pci_epf_mutex) #11
  %2 = getelementptr inbounds %struct.pci_epf_driver, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -72
  %8 = load ptr, ptr %6, align 4
  tail call void @pci_ep_cfs_remove_epf_group(ptr noundef %7) #11
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %5

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ %2, %1 ]
  %14 = getelementptr inbounds %struct.pci_epf_driver, ptr %0, i32 0, i32 5, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %13, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pci_epf_mutex) #11
  %17 = getelementptr inbounds %struct.pci_epf_driver, ptr %0, i32 0, i32 2
  tail call void @driver_unregister(ptr noundef %17) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__pci_epf_register_driver(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_epf_driver, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.pci_epf_ops, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.pci_epf_driver, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.pci_epf_driver, ptr %0, i32 0, i32 2, i32 1
  store ptr @pci_epf_bus_type, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pci_epf_driver, ptr %0, i32 0, i32 2, i32 2
  store ptr %1, ptr %16, align 4
  %17 = tail call i32 @driver_register(ptr noundef %14) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.pci_epf_driver, ptr %0, i32 0, i32 5
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.pci_epf_driver, ptr %0, i32 0, i32 5, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.pci_epf_driver, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %44, %19
  %27 = phi ptr [ %48, %44 ], [ %23, %19 ]
  %28 = tail call ptr @pci_ep_cfs_add_epf_group(ptr noundef %27) #11
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  tail call void @mutex_lock(ptr noundef nonnull @pci_epf_mutex) #11
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load ptr, ptr %20, align 4
  %32 = icmp eq ptr %31, %20
  br i1 %32, label %40, label %33

33:                                               ; preds = %33, %30
  %34 = phi ptr [ %36, %33 ], [ %31, %30 ]
  %35 = getelementptr i8, ptr %34, i32 -72
  %36 = load ptr, ptr %34, align 4
  tail call void @pci_ep_cfs_remove_epf_group(ptr noundef %35) #11
  %37 = icmp eq ptr %36, %20
  br i1 %37, label %38, label %33

38:                                               ; preds = %33
  %39 = load ptr, ptr %20, align 4
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi ptr [ %39, %38 ], [ %20, %30 ]
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  store volatile ptr %41, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %20, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pci_epf_mutex) #11
  br label %51

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.config_group, ptr %28, i32 0, i32 4
  %46 = load ptr, ptr %21, align 4
  store ptr %45, ptr %21, align 4
  store ptr %20, ptr %45, align 4
  %47 = getelementptr inbounds %struct.config_group, ptr %28, i32 0, i32 4, i32 1
  store ptr %46, ptr %47, align 4
  store volatile ptr %45, ptr %46, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pci_epf_mutex) #11
  %48 = getelementptr %struct.pci_epf_device_id, ptr %27, i32 1
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %26

51:                                               ; preds = %44, %40, %19, %13, %9, %6, %2
  %52 = phi i32 [ -22, %2 ], [ -22, %9 ], [ -22, %6 ], [ %17, %13 ], [ 0, %19 ], [ 0, %40 ], [ 0, %44 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_epf_destroy(ptr noundef %0) #0 {
  tail call void @device_unregister(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_epf_create(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 824) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @strchrnul(ptr noundef %0, i32 noundef 46) #11
  %7 = ptrtoint ptr %6 to i32
  %8 = ptrtoint ptr %0 to i32
  %9 = sub i32 %7, %8
  %10 = tail call ptr @kstrndup(ptr noundef %0, i32 noundef %9, i32 noundef 3264) #11
  %11 = getelementptr inbounds %struct.pci_epf, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 8
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %30

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.pci_epf, ptr %3, i32 0, i32 21
  store i32 1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.pci_epf, ptr %3, i32 0, i32 22
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.pci_epf, ptr %3, i32 0, i32 22, i32 1
  store ptr %16, ptr %17, align 8
  tail call void @device_initialize(ptr noundef nonnull %3) #11
  %18 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5
  store ptr @pci_epf_bus_type, ptr %18, align 4
  %19 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  store ptr @pci_epf_type, ptr %19, align 8
  %20 = getelementptr inbounds %struct.pci_epf, ptr %3, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.7, ptr noundef nonnull @pci_epf_create.__key) #11
  %21 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, ptr noundef %0) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  tail call void @put_device(ptr noundef nonnull %3) #11
  %24 = inttoptr i32 %21 to ptr
  br label %30

25:                                               ; preds = %14
  %26 = tail call i32 @device_add(ptr noundef nonnull %3) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  tail call void @put_device(ptr noundef nonnull %3) #11
  %29 = inttoptr i32 %26 to ptr
  br label %30

30:                                               ; preds = %28, %25, %23, %13, %1
  %31 = phi ptr [ %24, %23 ], [ %29, %28 ], [ inttoptr (i32 -12 to ptr), %13 ], [ %3, %25 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pci_epf_init() #4 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @pci_epf_bus_type) #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %1) #10
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pci_epf_exit() #4 section ".exit.text" {
  tail call void @bus_unregister(ptr noundef nonnull @pci_epf_bus_type) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ep_cfs_remove_epf_group(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ep_cfs_add_epf_group(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_epf_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @pci_epf_device_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr i8, ptr %1, i32 92
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  br label %16

12:                                               ; preds = %16
  %13 = getelementptr %struct.pci_epf_device_id, ptr %17, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12, %9
  %17 = phi ptr [ %4, %9 ], [ %13, %12 ]
  %18 = tail call i32 @strcmp(ptr noundef %11, ptr noundef %17) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %12

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %1, align 4
  %24 = tail call i32 @strcmp(ptr noundef %22, ptr noundef %23)
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %20, %16, %12, %6
  %28 = phi i32 [ %26, %20 ], [ 0, %6 ], [ 1, %16 ], [ 0, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_epf_device_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 10
  store ptr %4, ptr %8, align 8
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 %9(ptr noundef %0) #11
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %10, %7 ], [ -19, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_epf_device_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.pci_epf, ptr %0, i32 0, i32 10
  store ptr null, ptr %9, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{i32 0, i32 33}
