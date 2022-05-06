; ModuleID = '/llk/IR/drivers/edac/edac_device.c_pt.bc'
source_filename = "../drivers/edac/edac_device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_device_alloc_ctl_info:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_device_alloc_ctl_info\22\09\09\09\09\09"
module asm "__kstrtabns_edac_device_alloc_ctl_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_device_free_ctl_info:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_device_free_ctl_info\22\09\09\09\09\09"
module asm "__kstrtabns_edac_device_free_ctl_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_device_alloc_index:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_device_alloc_index\22\09\09\09\09\09"
module asm "__kstrtabns_edac_device_alloc_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_device_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_device_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_edac_device_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_device_del_device:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_device_del_device\22\09\09\09\09\09"
module asm "__kstrtabns_edac_device_del_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_device_handle_ce_count:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_device_handle_ce_count\22\09\09\09\09\09"
module asm "__kstrtabns_edac_device_handle_ce_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_device_handle_ue_count:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_device_handle_ue_count\22\09\09\09\09\09"
module asm "__kstrtabns_edac_device_handle_ue_count:\09\09\09\09\09"
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
%struct.edac_device_ctl_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], i32, ptr, %struct.edac_device_counter, %struct.kobject }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.edac_device_counter = type { i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.edac_device_instance = type { ptr, [35 x i8], %struct.edac_device_counter, i32, ptr, %struct.kobject }
%struct.edac_device_block = type { ptr, [32 x i8], %struct.edac_device_counter, i32, ptr, %struct.kobject }
%struct.edac_dev_sysfs_block_attribute = type { %struct.attribute, ptr, ptr, ptr, i32 }
%struct.attribute = type { ptr, i16 }
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
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@__kstrtab_edac_device_alloc_ctl_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_device_alloc_ctl_info = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_device_alloc_ctl_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_device_alloc_ctl_info to i32), ptr @__kstrtab_edac_device_alloc_ctl_info, ptr @__kstrtabns_edac_device_alloc_ctl_info }, section "___ksymtab_gpl+edac_device_alloc_ctl_info", align 4
@__kstrtab_edac_device_free_ctl_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_device_free_ctl_info = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_device_free_ctl_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_device_free_ctl_info to i32), ptr @__kstrtab_edac_device_free_ctl_info, ptr @__kstrtabns_edac_device_free_ctl_info }, section "___ksymtab_gpl+edac_device_free_ctl_info", align 4
@edac_device_alloc_index.device_indexes = internal global %struct.atomic_t zeroinitializer, align 4
@__kstrtab_edac_device_alloc_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_device_alloc_index = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_device_alloc_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_device_alloc_index to i32), ptr @__kstrtab_edac_device_alloc_index, ptr @__kstrtabns_edac_device_alloc_index }, section "___ksymtab_gpl+edac_device_alloc_index", align 4
@device_ctls_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @device_ctls_mutex, i64 12), ptr getelementptr (i8, ptr @device_ctls_mutex, i64 12) } }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [48 x i8] c"\014EDAC DEVICE%d: failed to create sysfs device\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"\016EDAC DEVICE%d: Giving out device to module %s controller %s: DEV %s (%s)\0A\00", align 1
@__kstrtab_edac_device_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_device_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_device_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_device_add_device to i32), ptr @__kstrtab_edac_device_add_device, ptr @__kstrtabns_edac_device_add_device }, section "___ksymtab_gpl+edac_device_add_device", align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"\016EDAC MC: Removed device %d for %s %s: DEV %s\0A\00", align 1
@__kstrtab_edac_device_del_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_device_del_device = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_device_del_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_device_del_device to i32), ptr @__kstrtab_edac_device_del_device, ptr @__kstrtabns_edac_device_del_device }, section "___ksymtab_gpl+edac_device_del_device", align 4
@.str.6 = private unnamed_addr constant [69 x i8] c"\013EDAC DEVICE%d: INTERNAL ERROR: 'instance' out of range (%d >= %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"\013EDAC DEVICE%d: INTERNAL ERROR: instance %d 'block' out of range (%d >= %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"\014EDAC DEVICE%d: CE: %s instance: %s block: %s count: %d '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@__kstrtab_edac_device_handle_ce_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_device_handle_ce_count = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_device_handle_ce_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_device_handle_ce_count to i32), ptr @__kstrtab_edac_device_handle_ce_count, ptr @__kstrtabns_edac_device_handle_ce_count }, section "___ksymtab_gpl+edac_device_handle_ce_count", align 4
@.str.10 = private unnamed_addr constant [63 x i8] c"\010EDAC DEVICE%d: UE: %s instance: %s block: %s count: %d '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"EDAC %s: UE instance: %s block %s count: %d '%s'\0A\00", align 1
@__kstrtab_edac_device_handle_ue_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_device_handle_ue_count = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_device_handle_ue_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_device_handle_ue_count to i32), ptr @__kstrtab_edac_device_handle_ue_count, ptr @__kstrtabns_edac_device_handle_ue_count }, section "___ksymtab_gpl+edac_device_handle_ue_count", align 4
@edac_device_list = internal global %struct.list_head { ptr @edac_device_list, ptr @edac_device_list }, align 4
@.str.12 = private unnamed_addr constant [46 x i8] c"\014EDAC MC: %s (%s) %s %s already assigned %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [88 x i8] c"\014EDAC MC: bug in low-level driver: attempt to assign\0A    duplicate dev_idx %d in %s()\0A\00", align 1
@__func__.add_edac_dev_to_global_list = private unnamed_addr constant [28 x i8] c"add_edac_dev_to_global_list\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_edac_device_add_device, ptr @__ksymtab_edac_device_alloc_ctl_info, ptr @__ksymtab_edac_device_alloc_index, ptr @__ksymtab_edac_device_del_device, ptr @__ksymtab_edac_device_free_ctl_info, ptr @__ksymtab_edac_device_handle_ce_count, ptr @__ksymtab_edac_device_handle_ue_count], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @edac_device_alloc_ctl_info(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store ptr null, ptr %10, align 4
  %11 = call ptr @edac_align_ptr(ptr noundef nonnull %10, i32 noundef 220, i32 noundef 1) #7
  %12 = call ptr @edac_align_ptr(ptr noundef nonnull %10, i32 noundef 92, i32 noundef %2) #7
  %13 = mul i32 %4, %2
  %14 = call ptr @edac_align_ptr(ptr noundef nonnull %10, i32 noundef 88, i32 noundef %13) #7
  %15 = icmp eq i32 %7, 0
  %16 = select i1 %15, i32 1, i32 %7
  %17 = mul i32 %16, %13
  %18 = call ptr @edac_align_ptr(ptr noundef nonnull %10, i32 noundef 24, i32 noundef %17) #7
  %19 = call ptr @edac_align_ptr(ptr noundef nonnull %10, i32 noundef %0, i32 noundef 1) #7
  %20 = ptrtoint ptr %19 to i32
  %21 = add i32 %20, %0
  %22 = call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %93, label %24

24:                                               ; preds = %9
  %25 = ptrtoint ptr %12 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = ptrtoint ptr %14 to i32
  %28 = getelementptr i8, ptr %22, i32 %27
  %29 = ptrtoint ptr %18 to i32
  %30 = getelementptr i8, ptr %22, i32 %29
  %31 = icmp eq i32 %0, 0
  %32 = getelementptr i8, ptr %22, i32 %20
  %33 = select i1 %31, ptr null, ptr %32
  %34 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %22, i32 0, i32 2
  store i32 %8, ptr %34, align 4
  %35 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %22, i32 0, i32 21
  store i32 %2, ptr %35, align 8
  %36 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %22, i32 0, i32 22
  store ptr %26, ptr %36, align 4
  %37 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %22, i32 0, i32 17
  store ptr %33, ptr %37, align 16
  %38 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %22, i32 0, i32 4
  store i32 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %22, i32 0, i32 3
  store i32 1, ptr %39, align 16
  %40 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %22, i32 0, i32 20
  %41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %40, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %1)
  %42 = icmp eq i32 %2, 0
  br i1 %42, label %88, label %43

43:                                               ; preds = %24
  %44 = icmp eq i32 %4, 0
  %45 = icmp eq ptr %6, null
  %46 = or i1 %45, %15
  %47 = mul i32 %7, %2
  br label %48

48:                                               ; preds = %85, %43
  %49 = phi i32 [ 0, %43 ], [ %86, %85 ]
  %50 = getelementptr %struct.edac_device_instance, ptr %26, i32 %49
  store ptr %22, ptr %50, align 4
  %51 = getelementptr inbounds %struct.edac_device_instance, ptr %50, i32 0, i32 3
  store i32 %4, ptr %51, align 4
  %52 = mul i32 %49, %4
  %53 = getelementptr %struct.edac_device_block, ptr %28, i32 %52
  %54 = getelementptr inbounds %struct.edac_device_instance, ptr %50, i32 0, i32 4
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.edac_device_instance, ptr %50, i32 0, i32 1
  %56 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %55, i32 noundef 35, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %49)
  br i1 %44, label %85, label %57

57:                                               ; preds = %82, %48
  %58 = phi i32 [ %83, %82 ], [ 0, %48 ]
  %59 = getelementptr %struct.edac_device_block, ptr %53, i32 %58
  store ptr %50, ptr %59, align 4
  %60 = getelementptr inbounds %struct.edac_device_block, ptr %59, i32 0, i32 1
  %61 = add i32 %58, %5
  %62 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %60, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %3, i32 noundef %61)
  br i1 %46, label %82, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.edac_device_block, ptr %59, i32 0, i32 3
  store i32 %7, ptr %64, align 4
  %65 = mul i32 %47, %58
  %66 = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %30, i32 %65
  %67 = getelementptr inbounds %struct.edac_device_block, ptr %59, i32 0, i32 4
  store ptr %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %68, %63
  %69 = phi i32 [ %80, %68 ], [ 0, %63 ]
  %70 = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %66, i32 %69
  %71 = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %6, i32 %69
  %72 = load i64, ptr %71, align 4
  store i64 %72, ptr %70, align 4
  %73 = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %6, i32 %69, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, ptr %70, i32 0, i32 1
  store ptr %74, ptr %75, align 4
  %76 = getelementptr %struct.edac_dev_sysfs_block_attribute, ptr %6, i32 %69, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, ptr %70, i32 0, i32 2
  store ptr %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, ptr %70, i32 0, i32 3
  store ptr %59, ptr %79, align 4
  %80 = add nuw i32 %69, 1
  %81 = icmp eq i32 %80, %7
  br i1 %81, label %82, label %68

82:                                               ; preds = %68, %57
  %83 = add nuw i32 %58, 1
  %84 = icmp eq i32 %83, %4
  br i1 %84, label %85, label %57

85:                                               ; preds = %82, %48
  %86 = add nuw i32 %49, 1
  %87 = icmp eq i32 %86, %2
  br i1 %87, label %88, label %48

88:                                               ; preds = %85, %24
  %89 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %22, i32 0, i32 10
  store i32 256, ptr %89, align 4
  %90 = call i32 @edac_device_register_sysfs_main_kobj(ptr noundef nonnull %22) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  call void @kfree(ptr noundef nonnull %22) #7
  br label %93

93:                                               ; preds = %92, %88, %9
  %94 = phi ptr [ null, %92 ], [ null, %9 ], [ %22, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  ret ptr %94
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_align_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_device_register_sysfs_main_kobj(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_device_free_ctl_info(ptr noundef %0) #0 {
  tail call void @edac_device_unregister_sysfs_main_kobj(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_unregister_sysfs_main_kobj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_device_reset_delay_period(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #7
  %4 = icmp eq i32 %1, 1000
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @round_jiffies_relative(i32 noundef 1000) #7
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  %9 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 6
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 7
  store i32 %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 11
  %12 = tail call zeroext i1 @edac_mod_work(ptr noundef %11, i32 noundef %8) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edac_mod_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_device_alloc_index() #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @edac_device_alloc_index.device_indexes) #7, !srcloc !9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @edac_device_alloc_index.device_indexes, ptr nonnull @edac_device_alloc_index.device_indexes, i32 1, ptr nonnull elementtype(i32) @edac_device_alloc_index.device_indexes) #7, !srcloc !10
  %2 = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %3 = add i32 %2, -1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_device_add_device(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @device_ctls_mutex) #7
  %2 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ @edac_device_list, %1 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @edac_device_list
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %6, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = icmp eq ptr %6, null
  br i1 %13, label %14, label %27, !prof !12

14:                                               ; preds = %12, %4
  %15 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 2
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %18, %20 ], [ @edac_device_list, %14 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @edac_device_list
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %18, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %15, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %16, label %25

25:                                               ; preds = %20
  %26 = icmp eq i32 %22, %23
  br i1 %26, label %44, label %46, !prof !13

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %3, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %32, %31 ], [ %29, %27 ]
  %35 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %6, i32 0, i32 16
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %6, i32 0, i32 14
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %6, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %6, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %34, ptr noundef %36, ptr noundef %38, ptr noundef %40, i32 noundef %42) #9
  br label %79

44:                                               ; preds = %25
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %22, ptr noundef nonnull @__func__.add_edac_dev_to_global_list) #9
  br label %79

46:                                               ; preds = %25, %16
  %47 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  store ptr %18, ptr %0, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %48, ptr %49, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  store volatile ptr %0, ptr %48, align 4
  store ptr %0, ptr %47, align 4
  %50 = load volatile i32, ptr @jiffies, align 64
  %51 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 18
  store i32 %50, ptr %51, align 4
  %52 = tail call i32 @edac_device_create_sysfs(ptr noundef %0) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load i32, ptr %15, align 4
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %55) #9
  %57 = load ptr, ptr %49, align 4
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %49, align 4
  tail call void @synchronize_rcu() #7
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %49, align 4
  br label %79

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 12
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 10
  br i1 %63, label %67, label %65

65:                                               ; preds = %60
  store i32 513, ptr %64, align 4
  tail call fastcc void @edac_device_workq_setup(ptr noundef %0)
  %66 = load i32, ptr %64, align 4
  br label %68

67:                                               ; preds = %60
  store i32 514, ptr %64, align 4
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ 514, %67 ], [ %66, %65 ]
  %70 = load i32, ptr %15, align 4
  %71 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 14
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 15
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 16
  %76 = load ptr, ptr %75, align 4
  %77 = tail call ptr @edac_op_state_to_string(i32 noundef %69) #7
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %70, ptr noundef %72, ptr noundef %74, ptr noundef %76, ptr noundef %77) #9
  br label %79

79:                                               ; preds = %68, %54, %44, %33
  %80 = phi i32 [ 0, %68 ], [ 1, %44 ], [ 1, %33 ], [ 1, %54 ]
  tail call void @mutex_unlock(ptr noundef nonnull @device_ctls_mutex) #7
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_device_create_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @edac_device_workq_setup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 6
  store i32 1000, ptr %2, align 4
  %3 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 7
  store i32 100, ptr %3, align 4
  %4 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 11
  store i32 -32, ptr %4, align 4
  %5 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 11, i32 0, i32 1
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 11, i32 0, i32 1, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 11, i32 0, i32 2
  store ptr @edac_device_workq_function, ptr %7, align 4
  %8 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %8, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #7
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 1000
  %11 = load i32, ptr %3, align 4
  br i1 %10, label %12, label %14

12:                                               ; preds = %1
  %13 = tail call i32 @round_jiffies_relative(i32 noundef %11) #7
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i32 [ %13, %12 ], [ %11, %1 ]
  %16 = tail call zeroext i1 @edac_queue_work(ptr noundef %4, i32 noundef %15) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_op_state_to_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @edac_device_del_device(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @device_ctls_mutex) #7
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @edac_device_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @edac_device_list
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %4, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = icmp eq ptr %4, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10, %2
  tail call void @mutex_unlock(ptr noundef nonnull @device_ctls_mutex) #7
  br label %35

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %4, i32 0, i32 10
  store i32 768, ptr %14, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  tail call void @synchronize_rcu() #7
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @device_ctls_mutex) #7
  %19 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %4, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  store i32 768, ptr %14, align 4
  %23 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %4, i32 0, i32 11
  %24 = tail call zeroext i1 @edac_stop_work(ptr noundef %23) #7
  br label %25

25:                                               ; preds = %22, %13
  tail call void @edac_device_remove_sysfs(ptr noundef nonnull %4) #7
  %26 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %4, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %4, i32 0, i32 14
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %4, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %4, i32 0, i32 16
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %27, ptr noundef %29, ptr noundef %31, ptr noundef %33) #9
  br label %35

35:                                               ; preds = %25, %12
  %36 = phi ptr [ null, %12 ], [ %4, %25 ]
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_remove_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_device_handle_ce_count(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %55, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = icmp ule i32 %9, %2
  %11 = icmp slt i32 %2, 0
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %15, i32 noundef %2, i32 noundef %9) #9
  br label %55

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 22
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.edac_device_instance, ptr %19, i32 %2, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp ule i32 %21, %3
  %23 = icmp slt i32 %3, 0
  %24 = or i1 %23, %22
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %27, i32 noundef %2, i32 noundef %3, i32 noundef %21) #9
  br label %55

29:                                               ; preds = %17
  %30 = getelementptr %struct.edac_device_instance, ptr %19, i32 %2, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr %struct.edac_device_block, ptr %31, i32 %3, i32 2, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %1
  store i32 %34, ptr %32, align 4
  %35 = getelementptr %struct.edac_device_instance, ptr %19, i32 %2, i32 2, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %1
  store i32 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 23, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %1
  store i32 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %29
  %45 = getelementptr %struct.edac_device_block, ptr %31, i32 %3
  %46 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.edac_device_instance, ptr %19, i32 %2, i32 1
  %51 = icmp eq ptr %45, null
  %52 = getelementptr %struct.edac_device_block, ptr %31, i32 %3, i32 1
  %53 = select i1 %51, ptr @.str.9, ptr %52
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %47, ptr noundef %49, ptr noundef %50, ptr noundef %53, i32 noundef %1, ptr noundef %4) #9
  br label %55

55:                                               ; preds = %44, %29, %25, %13, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_device_handle_ue_count(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = icmp ule i32 %9, %2
  %11 = icmp slt i32 %2, 0
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %15, i32 noundef %2, i32 noundef %9) #9
  br label %66

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 22
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.edac_device_instance, ptr %19, i32 %2, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp ule i32 %21, %3
  %23 = icmp slt i32 %3, 0
  %24 = or i1 %23, %22
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %27, i32 noundef %2, i32 noundef %3, i32 noundef %21) #9
  br label %66

29:                                               ; preds = %17
  %30 = getelementptr %struct.edac_device_instance, ptr %19, i32 %2, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr %struct.edac_device_block, ptr %31, i32 %3
  %33 = getelementptr %struct.edac_device_block, ptr %31, i32 %3, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %1
  store i32 %35, ptr %33, align 4
  %36 = getelementptr %struct.edac_device_instance, ptr %19, i32 %2, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, %1
  store i32 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 23
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %1
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.edac_device_instance, ptr %19, i32 %2, i32 1
  %51 = icmp eq ptr %32, null
  %52 = getelementptr %struct.edac_device_block, ptr %31, i32 %3, i32 1
  %53 = select i1 %51, ptr @.str.9, ptr %52
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %47, ptr noundef %49, ptr noundef %50, ptr noundef %53, i32 noundef %1, ptr noundef %4) #9
  br label %55

55:                                               ; preds = %45, %29
  %56 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %0, i32 0, i32 15
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr %struct.edac_device_instance, ptr %19, i32 %2, i32 1
  %63 = icmp eq ptr %32, null
  %64 = getelementptr %struct.edac_device_block, ptr %31, i32 %3, i32 1
  %65 = select i1 %63, ptr @.str.9, ptr %64
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11, ptr noundef %61, ptr noundef %62, ptr noundef %65, i32 noundef %1, ptr noundef %4) #10
  unreachable

66:                                               ; preds = %55, %25, %13, %5
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edac_device_workq_function(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  tail call void @mutex_lock(ptr noundef nonnull @device_ctls_mutex) #7
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %11 [
    i32 768, label %5
    i32 513, label %6
  ]

5:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @device_ctls_mutex) #7
  br label %22

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 44
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %2) #7
  br label %11

11:                                               ; preds = %10, %6, %1
  tail call void @mutex_unlock(ptr noundef nonnull @device_ctls_mutex) #7
  %12 = getelementptr i8, ptr %0, i32 -20
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1000
  %15 = getelementptr i8, ptr %0, i32 -16
  %16 = load i32, ptr %15, align 4
  br i1 %14, label %17, label %20

17:                                               ; preds = %11
  %18 = tail call i32 @round_jiffies_relative(i32 noundef %16) #7
  %19 = tail call zeroext i1 @edac_queue_work(ptr noundef %0, i32 noundef %18) #7
  br label %22

20:                                               ; preds = %11
  %21 = tail call zeroext i1 @edac_queue_work(ptr noundef %0, i32 noundef %16) #7
  br label %22

22:                                               ; preds = %20, %17, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edac_queue_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edac_stop_work(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }
attributes #10 = { cold noreturn nounwind }

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
!8 = !{i64 2148014203}
!9 = !{i64 414198, i64 2147904169, i64 2147904195, i64 2147904242, i64 2147904264, i64 2147904292, i64 2147904312}
!10 = !{i64 2147917065, i64 2147917097, i64 2147917126, i64 2147917160, i64 2147917191, i64 2147917214}
!11 = !{i64 2148014406}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148994414}
