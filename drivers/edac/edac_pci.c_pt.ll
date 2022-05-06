; ModuleID = '/llk/IR/drivers/edac/edac_pci.c_pt.bc'
source_filename = "../drivers/edac/edac_pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_pci_alloc_ctl_info:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_pci_alloc_ctl_info\22\09\09\09\09\09"
module asm "__kstrtabns_edac_pci_alloc_ctl_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_pci_free_ctl_info:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_pci_free_ctl_info\22\09\09\09\09\09"
module asm "__kstrtabns_edac_pci_free_ctl_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_pci_alloc_index:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_pci_alloc_index\22\09\09\09\09\09"
module asm "__kstrtabns_edac_pci_alloc_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_pci_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_pci_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_edac_pci_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_pci_del_device:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_pci_del_device\22\09\09\09\09\09"
module asm "__kstrtabns_edac_pci_del_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_pci_create_generic_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_pci_create_generic_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_edac_pci_create_generic_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_pci_release_generic_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_pci_release_generic_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_edac_pci_release_generic_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.edac_pci_ctl_info = type { %struct.list_head, i32, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], %struct.edac_pci_counter, %struct.kobject }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.edac_pci_counter = type { %struct.atomic_t, %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_edac_pci_alloc_ctl_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_pci_alloc_ctl_info = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_pci_alloc_ctl_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_pci_alloc_ctl_info to i32), ptr @__kstrtab_edac_pci_alloc_ctl_info, ptr @__kstrtabns_edac_pci_alloc_ctl_info }, section "___ksymtab_gpl+edac_pci_alloc_ctl_info", align 4
@__kstrtab_edac_pci_free_ctl_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_pci_free_ctl_info = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_pci_free_ctl_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_pci_free_ctl_info to i32), ptr @__kstrtab_edac_pci_free_ctl_info, ptr @__kstrtabns_edac_pci_free_ctl_info }, section "___ksymtab_gpl+edac_pci_free_ctl_info", align 4
@pci_indexes = internal global %struct.atomic_t zeroinitializer, align 4
@__kstrtab_edac_pci_alloc_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_pci_alloc_index = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_pci_alloc_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_pci_alloc_index to i32), ptr @__kstrtab_edac_pci_alloc_index, ptr @__kstrtabns_edac_pci_alloc_index }, section "___ksymtab_gpl+edac_pci_alloc_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@edac_pci_ctls_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @edac_pci_ctls_mutex, i64 12), ptr getelementptr (i8, ptr @edac_pci_ctls_mutex, i64 12) } }, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"\014EDAC PCI%d: failed to create sysfs pci\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"\016EDAC PCI%d: Giving out device to module %s controller %s: DEV %s (%s)\0A\00", align 1
@__kstrtab_edac_pci_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_pci_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_pci_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_pci_add_device to i32), ptr @__kstrtab_edac_pci_add_device, ptr @__kstrtabns_edac_pci_add_device }, section "___ksymtab_gpl+edac_pci_add_device", align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"\016EDAC PCI: Removed device %d for %s %s: DEV %s\0A\00", align 1
@__kstrtab_edac_pci_del_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_pci_del_device = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_pci_del_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_pci_del_device to i32), ptr @__kstrtab_edac_pci_del_device, ptr @__kstrtabns_edac_pci_del_device }, section "___ksymtab_gpl+edac_pci_del_device", align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"EDAC PCI controller\00", align 1
@edac_op_state = external dso_local local_unnamed_addr global i32, align 4
@edac_pci_idx = internal unnamed_addr global i32 0, align 4
@__kstrtab_edac_pci_create_generic_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_pci_create_generic_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_pci_create_generic_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_pci_create_generic_ctl to i32), ptr @__kstrtab_edac_pci_create_generic_ctl, ptr @__kstrtabns_edac_pci_create_generic_ctl }, section "___ksymtab_gpl+edac_pci_create_generic_ctl", align 4
@__kstrtab_edac_pci_release_generic_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_pci_release_generic_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_pci_release_generic_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_pci_release_generic_ctl to i32), ptr @__kstrtab_edac_pci_release_generic_ctl, ptr @__kstrtabns_edac_pci_release_generic_ctl }, section "___ksymtab_gpl+edac_pci_release_generic_ctl", align 4
@edac_pci_list = internal global %struct.list_head { ptr @edac_pci_list, ptr @edac_pci_list }, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"\014EDAC PCI: %s (%s) %s %s already assigned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [86 x i8] c"\014EDAC PCI: but in low-level driver: attempt to assign\0A\09duplicate pci_idx %d in %s()\0A\00", align 1
@__func__.add_edac_pci_to_global_list = private unnamed_addr constant [28 x i8] c"add_edac_pci_to_global_list\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_edac_pci_add_device, ptr @__ksymtab_edac_pci_alloc_ctl_info, ptr @__ksymtab_edac_pci_alloc_index, ptr @__ksymtab_edac_pci_create_generic_ctl, ptr @__ksymtab_edac_pci_del_device, ptr @__ksymtab_edac_pci_free_ctl_info, ptr @__ksymtab_edac_pci_release_generic_ctl], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @edac_pci_alloc_ctl_info(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4
  %4 = call ptr @edac_align_ptr(ptr noundef nonnull %3, i32 noundef 184, i32 noundef 1) #8
  %5 = call ptr @edac_align_ptr(ptr noundef nonnull %3, i32 noundef 1, i32 noundef %0) #8
  %6 = ptrtoint ptr %5 to i32
  %7 = add i32 %6, %0
  %8 = call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %0, 0
  %12 = getelementptr i8, ptr %8, i32 %6
  %13 = select i1 %11, ptr null, ptr %12
  %14 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %8, i32 0, i32 10
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %8, i32 0, i32 3
  store i32 256, ptr %15, align 16
  %16 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %8, i32 0, i32 13
  %17 = call i32 @strlen(ptr noundef %1)
  %18 = add i32 %17, 1
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %16, i32 noundef %18, ptr noundef nonnull @.str, ptr noundef %1)
  br label %20

20:                                               ; preds = %10, %2
  %21 = phi ptr [ %8, %10 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret ptr %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_align_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_pci_free_ctl_info(ptr noundef %0) #0 {
  tail call void @edac_pci_remove_sysfs(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_pci_remove_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_pci_alloc_index() #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @pci_indexes) #8, !srcloc !9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @pci_indexes, ptr nonnull @pci_indexes, i32 1, ptr nonnull elementtype(i32) @pci_indexes) #8, !srcloc !10
  %2 = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %3 = add i32 %2, -1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_pci_add_device(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 1
  store i32 %1, ptr %3, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 11
  store i32 %4, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef nonnull @edac_pci_ctls_mutex) #8
  %6 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ @edac_pci_list, %2 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @edac_pci_list
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %10, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = icmp eq ptr %10, null
  br i1 %17, label %18, label %30, !prof !12

18:                                               ; preds = %16, %8
  br label %19

19:                                               ; preds = %23, %18
  %20 = phi ptr [ %21, %23 ], [ @edac_pci_list, %18 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @edac_pci_list
  br i1 %22, label %49, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %3, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %19, label %28

28:                                               ; preds = %23
  %29 = icmp eq i32 %25, %26
  br i1 %29, label %47, label %49, !prof !13

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load ptr, ptr %7, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %35, %34 ], [ %32, %30 ]
  %38 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %10, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %10, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %10, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %10, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %37, ptr noundef %39, ptr noundef %41, ptr noundef %43, i32 noundef %45) #10
  br label %88

47:                                               ; preds = %28
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %25, ptr noundef nonnull @__func__.add_edac_pci_to_global_list) #10
  br label %88

49:                                               ; preds = %28, %19
  %50 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  store ptr %21, ptr %0, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  store volatile ptr %0, ptr %51, align 4
  store ptr %0, ptr %50, align 4
  %53 = tail call i32 @edac_pci_create_sysfs(ptr noundef %0) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, ptr %3, align 4
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %56) #10
  %58 = load ptr, ptr %52, align 4
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store volatile ptr %59, ptr %58, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  tail call void @synchronize_rcu() #8
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %52, align 4
  br label %88

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  %65 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 3
  br i1 %64, label %76, label %66

66:                                               ; preds = %61
  store i32 513, ptr %65, align 4
  %67 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 4
  store i32 -32, ptr %67, align 4
  %68 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 4, i32 0, i32 1
  store volatile ptr %68, ptr %68, align 4
  %69 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 4, i32 0, i32 1, i32 1
  store ptr %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 4, i32 0, i32 2
  store ptr @edac_pci_workq_function, ptr %70, align 4
  %71 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %71, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %72 = tail call i32 @edac_pci_get_poll_msec() #8
  %73 = tail call i32 @__msecs_to_jiffies(i32 noundef %72) #8
  %74 = tail call zeroext i1 @edac_queue_work(ptr noundef %67, i32 noundef %73) #8
  %75 = load i32, ptr %65, align 4
  br label %77

76:                                               ; preds = %61
  store i32 514, ptr %65, align 4
  br label %77

77:                                               ; preds = %76, %66
  %78 = phi i32 [ 514, %76 ], [ %75, %66 ]
  %79 = load i32, ptr %3, align 4
  %80 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 7
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 8
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 9
  %85 = load ptr, ptr %84, align 4
  %86 = tail call ptr @edac_op_state_to_string(i32 noundef %78) #8
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %86) #10
  br label %88

88:                                               ; preds = %77, %55, %47, %36
  %89 = phi i32 [ 0, %77 ], [ 1, %47 ], [ 1, %36 ], [ 1, %55 ]
  tail call void @mutex_unlock(ptr noundef nonnull @edac_pci_ctls_mutex) #8
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_pci_create_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edac_pci_workq_function(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  tail call void @mutex_lock(ptr noundef nonnull @edac_pci_ctls_mutex) #8
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 513
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = tail call i32 @edac_pci_get_check_errors() #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr i8, ptr %0, i32 44
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %2) #8
  br label %12

12:                                               ; preds = %9, %6
  %13 = tail call i32 @edac_pci_get_poll_msec() #8
  %14 = icmp eq i32 %13, 1000
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 @round_jiffies_relative(i32 noundef 100) #8
  br label %19

17:                                               ; preds = %12
  %18 = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = tail call zeroext i1 @edac_queue_work(ptr noundef %0, i32 noundef %20) #8
  br label %22

22:                                               ; preds = %19, %1
  tail call void @mutex_unlock(ptr noundef nonnull @edac_pci_ctls_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edac_queue_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_pci_get_poll_msec() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_op_state_to_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @edac_pci_del_device(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @edac_pci_ctls_mutex) #8
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @edac_pci_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @edac_pci_list
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = icmp eq ptr %4, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10, %2
  tail call void @mutex_unlock(ptr noundef nonnull @edac_pci_ctls_mutex) #8
  br label %35

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %4, i32 0, i32 3
  store i32 768, ptr %14, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  tail call void @synchronize_rcu() #8
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @edac_pci_ctls_mutex) #8
  %19 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %4, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %4, i32 0, i32 4
  %24 = tail call zeroext i1 @edac_stop_work(ptr noundef %23) #8
  br label %25

25:                                               ; preds = %22, %13
  %26 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %4, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %4, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %4, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %4, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %27, ptr noundef %29, ptr noundef %31, ptr noundef %33) #10
  br label %35

35:                                               ; preds = %25, %12
  %36 = phi ptr [ null, %12 ], [ %4, %25 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edac_stop_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @edac_pci_create_generic_ctl(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4
  %4 = call ptr @edac_align_ptr(ptr noundef nonnull %3, i32 noundef 184, i32 noundef 1) #8
  %5 = call ptr @edac_align_ptr(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 4) #8
  %6 = ptrtoint ptr %5 to i32
  %7 = add i32 %6, 4
  %8 = call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %38

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %8, i32 %6
  %13 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %8, i32 0, i32 10
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %8, i32 0, i32 3
  store i32 256, ptr %14, align 16
  %15 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %8, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %15, ptr noundef nonnull align 1 dereferenceable(20) @.str.4, i32 20, i1 false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %16 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %8, i32 0, i32 6
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %8, ptr %17, align 8
  %18 = getelementptr i8, ptr %0, i32 44
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load ptr, ptr %0, align 4
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi ptr [ %22, %21 ], [ %19, %11 ]
  %25 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %8, i32 0, i32 9
  store ptr %24, ptr %25, align 16
  %26 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %8, i32 0, i32 7
  store ptr %1, ptr %26, align 8
  %27 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %8, i32 0, i32 8
  store ptr @.str.4, ptr %27, align 4
  %28 = load i32, ptr @edac_op_state, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %8, i32 0, i32 5
  store ptr @edac_pci_generic_check, ptr %31, align 64
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i32, ptr @edac_pci_idx, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr @edac_pci_idx, align 4
  store i32 %33, ptr %12, align 4
  %35 = call i32 @edac_pci_add_device(ptr noundef nonnull %8, i32 noundef %33)
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void @edac_pci_remove_sysfs(ptr noundef nonnull %8) #8
  br label %38

38:                                               ; preds = %37, %32, %10
  %39 = phi ptr [ null, %37 ], [ %8, %32 ], [ null, %10 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edac_pci_generic_check(ptr nocapture noundef readnone %0) #0 {
  tail call void @edac_pci_do_parity_check() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_pci_release_generic_ctl(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.edac_pci_ctl_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @edac_pci_del_device(ptr noundef %3)
  tail call void @edac_pci_remove_sysfs(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_pci_get_check_errors() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_pci_do_parity_check() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

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
!8 = !{i64 2148003549}
!9 = !{i64 403544, i64 2147893515, i64 2147893541, i64 2147893588, i64 2147893610, i64 2147893638, i64 2147893658}
!10 = !{i64 2147906411, i64 2147906443, i64 2147906472, i64 2147906506, i64 2147906537, i64 2147906560}
!11 = !{i64 2148003752}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148983760}
