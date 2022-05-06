; ModuleID = '/llk/IR/drivers/of/overlay.c_pt.bc'
source_filename = "../drivers/of/overlay.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_overlay_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_overlay_notifier_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_overlay_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_overlay_notifier_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22of_overlay_notifier_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_of_overlay_notifier_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_overlay_fdt_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22of_overlay_fdt_apply\22\09\09\09\09\09"
module asm "__kstrtabns_of_overlay_fdt_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_overlay_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22of_overlay_remove\22\09\09\09\09\09"
module asm "__kstrtabns_of_overlay_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_overlay_remove_all:\09\09\09\09\09"
module asm "\09.asciz \09\22of_overlay_remove_all\22\09\09\09\09\09"
module asm "__kstrtabns_of_overlay_remove_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.target = type { ptr, i8 }
%struct.of_overlay_notify_data = type { ptr, ptr }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.overlay_changeset = type { i32, %struct.list_head, ptr, ptr, i32, ptr, i8, %struct.of_changeset }
%struct.of_changeset = type { %struct.list_head }
%struct.fragment = type { ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.of_changeset_entry = type { %struct.list_head, i32, ptr, ptr, ptr }

@of_overlay_phandle_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_overlay_phandle_mutex, i64 12), ptr getelementptr (i8, ptr @of_overlay_phandle_mutex, i64 12) } }, align 4
@overlay_notify_chain = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @overlay_notify_chain, i64 16), ptr getelementptr (i8, ptr @overlay_notify_chain, i64 16) } }, ptr null }, align 4
@__kstrtab_of_overlay_notifier_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_overlay_notifier_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_overlay_notifier_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_overlay_notifier_register to i32), ptr @__kstrtab_of_overlay_notifier_register, ptr @__kstrtabns_of_overlay_notifier_register }, section "___ksymtab_gpl+of_overlay_notifier_register", align 4
@__kstrtab_of_overlay_notifier_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_overlay_notifier_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_of_overlay_notifier_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_overlay_notifier_unregister to i32), ptr @__kstrtab_of_overlay_notifier_unregister, ptr @__kstrtabns_of_overlay_notifier_unregister }, section "___ksymtab_gpl+of_overlay_notifier_unregister", align 4
@.str = private unnamed_addr constant [43 x i8] c"\013OF: overlay: Invalid overlay_fdt header\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"\013OF: overlay: unable to unflatten overlay_fdt\0A\00", align 1
@__kstrtab_of_overlay_fdt_apply = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_overlay_fdt_apply = external dso_local constant [0 x i8], align 1
@__ksymtab_of_overlay_fdt_apply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_overlay_fdt_apply to i32), ptr @__kstrtab_of_overlay_fdt_apply, ptr @__kstrtabns_of_overlay_fdt_apply }, section "___ksymtab_gpl+of_overlay_fdt_apply", align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"\013OF: overlay: suspect devicetree state, refuse to remove overlay\0A\00", align 1
@of_mutex = external dso_local global %struct.mutex, align 4
@ovcs_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"\013OF: overlay: remove: Could not find overlay #%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"\013OF: overlay: overlay changeset pre-remove notify error %d\0A\00", align 1
@devicetree_state_flags = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"\013OF: overlay: overlay remove changeset entry notify error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"\013OF: overlay: overlay changeset post-remove notify error %d\0A\00", align 1
@__kstrtab_of_overlay_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_overlay_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_of_overlay_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_overlay_remove to i32), ptr @__kstrtab_of_overlay_remove, ptr @__kstrtabns_of_overlay_remove }, section "___ksymtab_gpl+of_overlay_remove", align 4
@ovcs_list = internal global %struct.list_head { ptr @ovcs_list, ptr @ovcs_list }, align 4
@__kstrtab_of_overlay_remove_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_overlay_remove_all = external dso_local constant [0 x i8], align 1
@__ksymtab_of_overlay_remove_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_overlay_remove_all to i32), ptr @__kstrtab_of_overlay_remove_all, ptr @__kstrtabns_of_overlay_remove_all }, section "___ksymtab_gpl+of_overlay_remove_all", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [66 x i8] c"\013OF: overlay: devicetree state suspect, refuse to apply overlay\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"\013OF: overlay: overlay changeset pre-apply notify error %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"\013OF: overlay: overlay apply changeset entry notify error %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"\013OF: overlay: overlay changeset post-apply notify error %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"__overlay__\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"__symbols__\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"/__symbols__\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"\013OF: overlay: symbols in overlay, but not in live tree\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"\013OF: overlay: no fragments or symbols in overlay\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"\013OF: overlay: %s() failed, ret = %d\0A\00", align 1
@__func__.init_overlay_changeset = private unnamed_addr constant [23 x i8] c"init_overlay_changeset\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"\013OF: overlay: find target, node: %pOF, phandle 0x%x not found\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"target-path\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"\013OF: overlay: find target, node: %pOF, path '%s' not found\0A\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"\013OF: overlay: find target, node: %pOF, no target property\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.26 = private unnamed_addr constant [79 x i8] c"\013OF: overlay: ERROR: changing value of #address-cells is not allowed in %pOF\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.28 = private unnamed_addr constant [76 x i8] c"\013OF: overlay: ERROR: changing value of #size-cells is not allowed in %pOF\0A\00", align 1
@.str.29 = private unnamed_addr constant [86 x i8] c"\013OF: overlay: WARNING: memory leak will occur if overlay removed, property: %pOF/%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"__overlay__/\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%pOF\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.33 = private unnamed_addr constant [70 x i8] c"\013OF: overlay: ERROR: multiple fragments add and/or delete node %pOF\0A\00", align 1
@.str.34 = private unnamed_addr constant [86 x i8] c"\013OF: overlay: ERROR: multiple fragments add, update, and/or delete property %pOF/%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"\013OF: overlay: overlay #%d is not topmost\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"\013OF: overlay: %s: #%d overlaps with #%d @%pOF\0A\00", align 1
@__func__.node_overlaps_later_cs = private unnamed_addr constant [23 x i8] c"node_overlaps_later_cs\00", align 1
@.str.37 = private unnamed_addr constant [69 x i8] c"\013OF: overlay: overlay changeset %s notifier error %d, target: %pOF\0A\00", align 1
@of_overlay_action_name = internal unnamed_addr constant [4 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], align 4
@.str.38 = private unnamed_addr constant [10 x i8] c"pre-apply\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"post-apply\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"pre-remove\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"post-remove\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_of_overlay_fdt_apply, ptr @__ksymtab_of_overlay_notifier_register, ptr @__ksymtab_of_overlay_notifier_unregister, ptr @__ksymtab_of_overlay_remove, ptr @__ksymtab_of_overlay_remove_all], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_overlay_mutex_lock() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @of_overlay_phandle_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_overlay_mutex_unlock() local_unnamed_addr #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @of_overlay_phandle_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_overlay_notifier_register(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @overlay_notify_chain, ptr noundef %0) #13
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_overlay_notifier_unregister(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @overlay_notify_chain, ptr noundef %0) #13
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_overlay_fdt_apply(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.target, align 8
  %5 = alloca %struct.of_overlay_notify_data, align 8
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store ptr null, ptr %9, align 4
  store i32 0, ptr %2, align 4
  %10 = icmp ult i32 %1, 40
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @fdt_check_header(ptr noundef %0) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %3
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  br label %387

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.fdt_header, ptr %0, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = getelementptr i8, ptr %17, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 16
  %25 = or i32 %24, %20
  %26 = getelementptr i8, ptr %17, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or i32 %25, %29
  %31 = getelementptr i8, ptr %17, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %30, %33
  %35 = icmp ugt i32 %34, %1
  br i1 %35, label %387, label %36

36:                                               ; preds = %16
  %37 = add i32 %34, 8
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %387, label %40

40:                                               ; preds = %36
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %38, ptr align 1 %0, i32 %34, i1 false)
  %41 = call ptr @of_fdt_unflatten_tree(ptr noundef nonnull %38, ptr noundef null, ptr noundef nonnull %9) #13
  %42 = load ptr, ptr %9, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  call void @kfree(ptr noundef nonnull %38) #13
  br label %385

46:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !8
  %47 = load i32, ptr @devicetree_state_flags, align 4
  %48 = and i32 %47, 3
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %380

52:                                               ; preds = %46
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %54 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 40) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %380, label %56

56:                                               ; preds = %52
  call void @mutex_lock(ptr noundef nonnull @of_overlay_phandle_mutex) #13
  call void @mutex_lock(ptr noundef nonnull @of_mutex) #13
  %57 = call i32 @of_resolve_phandles(ptr noundef nonnull %42) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %376

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.device_node, ptr %42, i32 0, i32 10
  %61 = load volatile i32, ptr %60, align 4
  %62 = load volatile i32, ptr %60, align 4
  %63 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 3
  store ptr %42, ptr %63, align 8
  %64 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 2
  store ptr %38, ptr %64, align 4
  %65 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 1
  store volatile ptr %65, ptr %65, align 4
  %66 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 1, i32 1
  store ptr %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 7
  call void @of_changeset_init(ptr noundef %67) #13
  %68 = call i32 @idr_alloc(ptr noundef nonnull @ovcs_idr, ptr noundef nonnull %54, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #13
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %167, label %70

70:                                               ; preds = %59
  %71 = call ptr @of_get_next_child(ptr noundef nonnull %42, ptr noundef null) #13
  %72 = icmp eq ptr %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %80, %70
  %74 = phi ptr [ %82, %80 ], [ %71, %70 ]
  %75 = phi i32 [ %81, %80 ], [ 0, %70 ]
  %76 = call ptr @of_get_child_by_name(ptr noundef nonnull %74, ptr noundef nonnull @.str.11) #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = add i32 %75, 1
  call void @of_node_put(ptr noundef nonnull %76) #13
  br label %80

80:                                               ; preds = %78, %73
  %81 = phi i32 [ %79, %78 ], [ %75, %73 ]
  %82 = call ptr @of_get_next_child(ptr noundef nonnull %42, ptr noundef nonnull %74) #13
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %73

84:                                               ; preds = %80, %70
  %85 = phi i32 [ 0, %70 ], [ %81, %80 ]
  %86 = call ptr @of_get_child_by_name(ptr noundef nonnull %42, ptr noundef nonnull @.str.12) #13
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = add i32 %85, 1
  call void @of_node_put(ptr noundef nonnull %86) #13
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i32 [ %89, %88 ], [ %85, %84 ]
  %92 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %91, i32 8) #13
  %93 = extractvalue { i32, i1 } %92, 1
  br i1 %93, label %163, label %94, !prof !9

94:                                               ; preds = %90
  %95 = extractvalue { i32, i1 } %92, 0
  %96 = call noalias align 64 ptr @__kmalloc(i32 noundef %95, i32 noundef 3520) #15
  %97 = icmp eq ptr %96, null
  br i1 %97, label %163, label %98

98:                                               ; preds = %94
  %99 = call ptr @of_get_next_child(ptr noundef nonnull %42, ptr noundef null) #13
  %100 = icmp eq ptr %99, null
  br i1 %100, label %140, label %101

101:                                              ; preds = %136, %98
  %102 = phi ptr [ %138, %136 ], [ %99, %98 ]
  %103 = phi i32 [ %137, %136 ], [ 0, %98 ]
  %104 = call ptr @of_get_child_by_name(ptr noundef nonnull %102, ptr noundef nonnull @.str.11) #13
  %105 = icmp eq ptr %104, null
  br i1 %105, label %136, label %106

106:                                              ; preds = %101
  %107 = getelementptr %struct.fragment, ptr %96, i32 %103
  store ptr %104, ptr %107, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !8
  %108 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %102, ptr noundef nonnull @.str.17, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #13
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, ptr %7, align 4
  %112 = call ptr @of_find_node_by_phandle(i32 noundef %111) #13
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %132

114:                                              ; preds = %110
  %115 = load i32, ptr %7, align 4
  %116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %102, i32 noundef %115) #14
  br label %129

117:                                              ; preds = %106
  %118 = call i32 @of_property_read_string(ptr noundef nonnull %102, ptr noundef nonnull @.str.19, ptr noundef nonnull %6) #13
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load ptr, ptr %6, align 4
  %122 = call ptr @of_find_node_opts_by_path(ptr noundef %121, ptr noundef null) #13
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load ptr, ptr %6, align 4
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %102, ptr noundef %125) #14
  br label %129

127:                                              ; preds = %117
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %102) #14
  br label %129

129:                                              ; preds = %127, %124, %114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %130 = getelementptr %struct.fragment, ptr %96, i32 %103, i32 1
  store ptr null, ptr %130, align 4
  %131 = load ptr, ptr %107, align 8
  call void @of_node_put(ptr noundef %131) #13
  call void @of_node_put(ptr noundef nonnull %102) #13
  br label %162

132:                                              ; preds = %120, %110
  %133 = phi ptr [ %112, %110 ], [ %122, %120 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %134 = getelementptr %struct.fragment, ptr %96, i32 %103, i32 1
  store ptr %133, ptr %134, align 4
  %135 = add i32 %103, 1
  br label %136

136:                                              ; preds = %132, %101
  %137 = phi i32 [ %135, %132 ], [ %103, %101 ]
  %138 = call ptr @of_get_next_child(ptr noundef nonnull %42, ptr noundef nonnull %102) #13
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %101

140:                                              ; preds = %136, %98
  %141 = phi i32 [ 0, %98 ], [ %137, %136 ]
  %142 = call ptr @of_get_child_by_name(ptr noundef nonnull %42, ptr noundef nonnull @.str.12) #13
  %143 = icmp eq ptr %142, null
  br i1 %143, label %154, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 6
  store i8 1, ptr %145, align 4
  %146 = getelementptr %struct.fragment, ptr %96, i32 %141
  store ptr %142, ptr %146, align 8
  %147 = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.13, ptr noundef null) #13
  %148 = getelementptr %struct.fragment, ptr %96, i32 %141, i32 1
  store ptr %147, ptr %148, align 4
  %149 = icmp eq ptr %147, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  br label %162

152:                                              ; preds = %144
  %153 = add i32 %141, 1
  br label %154

154:                                              ; preds = %152, %140
  %155 = phi i32 [ %153, %152 ], [ %141, %140 ]
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  br label %162

159:                                              ; preds = %154
  store i32 %68, ptr %54, align 8
  %160 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 4
  store i32 %155, ptr %160, align 4
  %161 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 5
  store ptr %96, ptr %161, align 8
  br label %172

162:                                              ; preds = %157, %150, %129
  call void @kfree(ptr noundef nonnull %96) #13
  br label %163

163:                                              ; preds = %162, %94, %90
  %164 = phi i32 [ -22, %162 ], [ -12, %94 ], [ -12, %90 ]
  %165 = call ptr @idr_remove(ptr noundef nonnull @ovcs_idr, i32 noundef %68) #13
  %166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.init_overlay_changeset, i32 noundef %164) #14
  br label %376

167:                                              ; preds = %59
  %168 = icmp eq i32 %68, 0
  br i1 %168, label %169, label %376

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 4
  %171 = load i32, ptr %170, align 4
  br label %172

172:                                              ; preds = %169, %159
  %173 = phi i32 [ %171, %169 ], [ %155, %159 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !8
  %174 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 4
  %175 = icmp sgt i32 %173, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 5
  %178 = getelementptr inbounds %struct.of_overlay_notify_data, ptr %5, i32 0, i32 1
  br label %183

179:                                              ; preds = %193
  %180 = add nuw nsw i32 %184, 1
  %181 = load i32, ptr %174, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %195

183:                                              ; preds = %179, %176
  %184 = phi i32 [ 0, %176 ], [ %180, %179 ]
  %185 = load ptr, ptr %177, align 8
  %186 = getelementptr %struct.fragment, ptr %185, i32 %184
  %187 = getelementptr %struct.fragment, ptr %185, i32 %184, i32 1
  %188 = load ptr, ptr %187, align 4
  store ptr %188, ptr %178, align 4
  %189 = load ptr, ptr %186, align 4
  store ptr %189, ptr %5, align 8
  %190 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @overlay_notify_chain, i32 noundef 0, ptr noundef nonnull %5) #13
  %191 = and i32 %190, -32769
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %195, label %193

193:                                              ; preds = %183
  %194 = icmp eq i32 %190, 0
  br i1 %194, label %179, label %196

195:                                              ; preds = %183, %179, %172
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %205

196:                                              ; preds = %193
  %197 = icmp sgt i32 %191, 1
  %198 = sub i32 1, %191
  %199 = select i1 %197, i32 %198, i32 0
  %200 = load ptr, ptr %178, align 4
  %201 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %199, ptr noundef %200) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %202 = icmp eq i32 %199, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %196
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %199) #14
  br label %378

205:                                              ; preds = %196, %195
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8, !annotation !8
  %206 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 6
  %207 = load i8, ptr %206, align 4, !range !10
  %208 = load i32, ptr %174, align 4
  %209 = sub nsw i8 0, %207
  %210 = sext i8 %209 to i32
  %211 = add i32 %208, %210
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %230

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 5
  %215 = getelementptr inbounds %struct.target, ptr %4, i32 0, i32 1
  br label %219

216:                                              ; preds = %219
  %217 = add nuw nsw i32 %220, 1
  %218 = icmp eq i32 %217, %211
  br i1 %218, label %228, label %219

219:                                              ; preds = %216, %213
  %220 = phi i32 [ 0, %213 ], [ %217, %216 ]
  %221 = load ptr, ptr %214, align 8
  %222 = getelementptr %struct.fragment, ptr %221, i32 %220
  %223 = getelementptr %struct.fragment, ptr %221, i32 %220, i32 1
  %224 = load ptr, ptr %223, align 4
  store ptr %224, ptr %4, align 8
  store i8 1, ptr %215, align 4
  %225 = load ptr, ptr %222, align 4
  %226 = call fastcc i32 @build_changeset_next_level(ptr noundef %54, ptr noundef nonnull %4, ptr noundef %225) #13
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %216, label %352

228:                                              ; preds = %216
  %229 = load i8, ptr %206, align 4, !range !10
  br label %230

230:                                              ; preds = %228, %205
  %231 = phi i8 [ %229, %228 ], [ %207, %205 ]
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %254, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.overlay_changeset, ptr %54, i32 0, i32 5
  %235 = load ptr, ptr %234, align 8
  %236 = load i32, ptr %174, align 4
  %237 = add i32 %236, -1
  %238 = getelementptr %struct.fragment, ptr %235, i32 %237
  %239 = getelementptr %struct.fragment, ptr %235, i32 %237, i32 1
  %240 = load ptr, ptr %239, align 4
  store ptr %240, ptr %4, align 8
  %241 = getelementptr inbounds %struct.target, ptr %4, i32 0, i32 1
  store i8 1, ptr %241, align 4
  %242 = load ptr, ptr %238, align 4
  %243 = getelementptr inbounds %struct.device_node, ptr %242, i32 0, i32 4
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %254, label %250

246:                                              ; preds = %250
  %247 = getelementptr inbounds %struct.property, ptr %251, i32 0, i32 3
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %254, label %250

250:                                              ; preds = %246, %233
  %251 = phi ptr [ %248, %246 ], [ %244, %233 ]
  %252 = call fastcc i32 @add_changeset_property(ptr noundef %54, ptr noundef nonnull %4, ptr noundef nonnull %251, i1 noundef zeroext true) #13
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %246, label %352

254:                                              ; preds = %246, %233, %230
  %255 = load ptr, ptr %67, align 8
  %256 = icmp eq ptr %255, %67
  br i1 %256, label %354, label %257

257:                                              ; preds = %345, %254
  %258 = phi ptr [ %348, %345 ], [ %255, %254 ]
  %259 = phi i32 [ %347, %345 ], [ 0, %254 ]
  %260 = getelementptr inbounds %struct.of_changeset_entry, ptr %258, i32 0, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = add i32 %261, -1
  %263 = icmp ult i32 %262, 2
  br i1 %263, label %264, label %297

264:                                              ; preds = %257
  %265 = load ptr, ptr %258, align 4
  %266 = icmp eq ptr %265, %67
  br i1 %266, label %297, label %267

267:                                              ; preds = %264
  %268 = getelementptr inbounds %struct.of_changeset_entry, ptr %258, i32 0, i32 2
  br label %269

269:                                              ; preds = %294, %267
  %270 = phi ptr [ %265, %267 ], [ %295, %294 ]
  %271 = getelementptr inbounds %struct.of_changeset_entry, ptr %270, i32 0, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = add i32 %272, -1
  %274 = icmp ult i32 %273, 2
  br i1 %274, label %275, label %294

275:                                              ; preds = %269
  %276 = load ptr, ptr %268, align 4
  %277 = getelementptr inbounds %struct.device_node, ptr %276, i32 0, i32 2
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.of_changeset_entry, ptr %270, i32 0, i32 2
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.device_node, ptr %280, i32 0, i32 2
  %282 = load ptr, ptr %281, align 4
  %283 = call i32 @strcasecmp(ptr noundef %278, ptr noundef %282) #13
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %294

285:                                              ; preds = %275
  %286 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.31, ptr noundef %276) #13
  %287 = load ptr, ptr %279, align 4
  %288 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.31, ptr noundef %287) #13
  %289 = call i32 @strcmp(ptr noundef %286, ptr noundef %288) #13
  %290 = icmp eq i32 %289, 0
  call void @kfree(ptr noundef %286) #13
  call void @kfree(ptr noundef %288) #13
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load ptr, ptr %268, align 4
  %293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %292) #14
  br label %297

294:                                              ; preds = %285, %275, %269
  %295 = load ptr, ptr %270, align 4
  %296 = icmp eq ptr %295, %67
  br i1 %296, label %297, label %269

297:                                              ; preds = %294, %291, %264, %257
  %298 = phi i32 [ -22, %291 ], [ 0, %257 ], [ 0, %264 ], [ 0, %294 ]
  %299 = or i32 %298, %259
  %300 = load i32, ptr %260, align 4
  %301 = add i32 %300, -3
  %302 = icmp ult i32 %301, 3
  br i1 %302, label %303, label %345

303:                                              ; preds = %297
  %304 = load ptr, ptr %258, align 4
  %305 = icmp eq ptr %304, %67
  br i1 %305, label %345, label %306

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.of_changeset_entry, ptr %258, i32 0, i32 2
  %308 = getelementptr inbounds %struct.of_changeset_entry, ptr %258, i32 0, i32 3
  br label %309

309:                                              ; preds = %342, %306
  %310 = phi ptr [ %304, %306 ], [ %343, %342 ]
  %311 = getelementptr inbounds %struct.of_changeset_entry, ptr %310, i32 0, i32 1
  %312 = load i32, ptr %311, align 4
  %313 = add i32 %312, -3
  %314 = icmp ult i32 %313, 3
  br i1 %314, label %315, label %342

315:                                              ; preds = %309
  %316 = load ptr, ptr %307, align 4
  %317 = getelementptr inbounds %struct.device_node, ptr %316, i32 0, i32 2
  %318 = load ptr, ptr %317, align 4
  %319 = getelementptr inbounds %struct.of_changeset_entry, ptr %310, i32 0, i32 2
  %320 = load ptr, ptr %319, align 4
  %321 = getelementptr inbounds %struct.device_node, ptr %320, i32 0, i32 2
  %322 = load ptr, ptr %321, align 4
  %323 = call i32 @strcasecmp(ptr noundef %318, ptr noundef %322) #13
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %342

325:                                              ; preds = %315
  %326 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.31, ptr noundef %316) #13
  %327 = load ptr, ptr %319, align 4
  %328 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.31, ptr noundef %327) #13
  %329 = call i32 @strcmp(ptr noundef %326, ptr noundef %328) #13
  %330 = icmp eq i32 %329, 0
  call void @kfree(ptr noundef %326) #13
  call void @kfree(ptr noundef %328) #13
  br i1 %330, label %331, label %342

331:                                              ; preds = %325
  %332 = load ptr, ptr %308, align 4
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.of_changeset_entry, ptr %310, i32 0, i32 3
  %335 = load ptr, ptr %334, align 4
  %336 = load ptr, ptr %335, align 4
  %337 = call i32 @strcmp(ptr noundef %333, ptr noundef %336) #13
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %331
  %340 = load ptr, ptr %307, align 4
  %341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %340, ptr noundef %333) #14
  br label %345

342:                                              ; preds = %331, %325, %315, %309
  %343 = load ptr, ptr %310, align 4
  %344 = icmp eq ptr %343, %67
  br i1 %344, label %345, label %309

345:                                              ; preds = %342, %339, %303, %297
  %346 = phi i32 [ -22, %339 ], [ 0, %297 ], [ 0, %303 ], [ 0, %342 ]
  %347 = or i32 %299, %346
  %348 = load ptr, ptr %258, align 4
  %349 = icmp eq ptr %348, %67
  br i1 %349, label %350, label %257

350:                                              ; preds = %345
  %351 = icmp eq i32 %347, 0
  br i1 %351, label %354, label %352

352:                                              ; preds = %350, %250, %219
  %353 = phi i32 [ -22, %350 ], [ %252, %250 ], [ %226, %219 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %378

354:                                              ; preds = %350, %254
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  store i32 0, ptr %8, align 4
  %355 = call i32 @__of_changeset_apply_entries(ptr noundef %67, ptr noundef nonnull %8) #13
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %363, label %357

357:                                              ; preds = %354
  %358 = load i32, ptr %8, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %378, label %360

360:                                              ; preds = %357
  %361 = load i32, ptr @devicetree_state_flags, align 4
  %362 = or i32 %361, 1
  store i32 %362, ptr @devicetree_state_flags, align 4
  br label %378

363:                                              ; preds = %354
  %364 = call i32 @__of_changeset_apply_notify(ptr noundef %67) #13
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %368, label %366

366:                                              ; preds = %363
  %367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %364) #14
  br label %368

368:                                              ; preds = %366, %363
  %369 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ovcs_list, i32 0, i32 1), align 4
  store ptr %65, ptr getelementptr inbounds (%struct.list_head, ptr @ovcs_list, i32 0, i32 1), align 4
  store ptr @ovcs_list, ptr %65, align 4
  store ptr %369, ptr %66, align 8
  store volatile ptr %65, ptr %369, align 4
  %370 = load i32, ptr %54, align 8
  store i32 %370, ptr %2, align 4
  %371 = call fastcc i32 @overlay_notify(ptr noundef nonnull %54, i32 noundef 1) #13
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %382, label %373

373:                                              ; preds = %368
  %374 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %371) #14
  %375 = select i1 %365, i32 %371, i32 %364
  br label %382

376:                                              ; preds = %167, %163, %56
  %377 = phi i32 [ %57, %56 ], [ %68, %167 ], [ %164, %163 ]
  call void @kfree(ptr noundef nonnull %38) #13
  call void @kfree(ptr noundef nonnull %42) #13
  br label %378

378:                                              ; preds = %376, %360, %357, %352, %203
  %379 = phi i32 [ %377, %376 ], [ %199, %203 ], [ %355, %360 ], [ %355, %357 ], [ %353, %352 ]
  call fastcc void @free_overlay_changeset(ptr noundef nonnull %54) #13
  br label %382

380:                                              ; preds = %52, %50
  %381 = phi i32 [ -16, %50 ], [ -12, %52 ]
  call void @kfree(ptr noundef nonnull %38) #13
  call void @kfree(ptr noundef nonnull %42) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  br label %385

382:                                              ; preds = %378, %373, %368
  %383 = phi i32 [ %379, %378 ], [ %364, %368 ], [ %375, %373 ]
  call void @mutex_unlock(ptr noundef nonnull @of_mutex) #13
  call void @mutex_unlock(ptr noundef nonnull @of_overlay_phandle_mutex) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %382, %380, %44
  %386 = phi i32 [ %383, %382 ], [ -22, %44 ], [ %381, %380 ]
  br label %387

387:                                              ; preds = %385, %382, %36, %16, %14
  %388 = phi i32 [ -22, %14 ], [ %386, %385 ], [ -22, %16 ], [ -12, %36 ], [ 0, %382 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret i32 %388
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_check_header(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_fdt_unflatten_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_overlay_remove(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.of_overlay_notify_data, align 8
  %3 = alloca %struct.of_overlay_notify_data, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load i32, ptr @devicetree_state_flags, align 4
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %152

10:                                               ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #13
  %11 = load i32, ptr %0, align 4
  %12 = tail call ptr @idr_find(ptr noundef nonnull @ovcs_idr, i32 noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, ptr %0, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %15) #14
  br label %150

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.overlay_changeset, ptr %12, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %63, label %21

21:                                               ; preds = %54, %17
  %22 = phi ptr [ %55, %54 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.of_changeset_entry, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ovcs_list, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 -4
  %27 = icmp eq ptr %25, @ovcs_list
  %28 = icmp eq ptr %26, %12
  %29 = or i1 %27, %28
  br i1 %29, label %54, label %30

30:                                               ; preds = %47, %21
  %31 = phi ptr [ %50, %47 ], [ %26, %21 ]
  %32 = phi ptr [ %49, %47 ], [ %25, %21 ]
  %33 = getelementptr i8, ptr %32, i32 28
  br label %34

34:                                               ; preds = %43, %30
  %35 = phi ptr [ %33, %30 ], [ %36, %43 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %33
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.of_changeset_entry, ptr %36, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call fastcc i32 @find_node(ptr noundef %40, ptr noundef %24) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load ptr, ptr %39, align 4
  %45 = tail call fastcc i32 @find_node(ptr noundef %24, ptr noundef %44) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %34, label %57

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 -4
  %51 = icmp eq ptr %49, @ovcs_list
  %52 = icmp eq ptr %50, %12
  %53 = or i1 %51, %52
  br i1 %53, label %54, label %30

54:                                               ; preds = %47, %21
  %55 = load ptr, ptr %22, align 4
  %56 = icmp eq ptr %55, %18
  br i1 %56, label %63, label %21

57:                                               ; preds = %43, %38
  %58 = load i32, ptr %12, align 4
  %59 = load i32, ptr %31, align 4
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.node_overlaps_later_cs, i32 noundef %58, i32 noundef %59, ptr noundef %24) #14
  %61 = load i32, ptr %12, align 4
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %61) #14
  br label %150

63:                                               ; preds = %54, %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !8
  %64 = getelementptr inbounds %struct.overlay_changeset, ptr %12, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.overlay_changeset, ptr %12, i32 0, i32 5
  %69 = getelementptr inbounds %struct.of_overlay_notify_data, ptr %3, i32 0, i32 1
  br label %74

70:                                               ; preds = %84
  %71 = add nuw nsw i32 %75, 1
  %72 = load i32, ptr %64, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70, %67
  %75 = phi i32 [ 0, %67 ], [ %71, %70 ]
  %76 = load ptr, ptr %68, align 4
  %77 = getelementptr %struct.fragment, ptr %76, i32 %75
  %78 = getelementptr %struct.fragment, ptr %76, i32 %75, i32 1
  %79 = load ptr, ptr %78, align 4
  store ptr %79, ptr %69, align 4
  %80 = load ptr, ptr %77, align 4
  store ptr %80, ptr %3, align 8
  %81 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @overlay_notify_chain, i32 noundef 2, ptr noundef nonnull %3) #13
  %82 = and i32 %81, -32769
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %86, label %84

84:                                               ; preds = %74
  %85 = icmp eq i32 %81, 0
  br i1 %85, label %70, label %87

86:                                               ; preds = %74, %70, %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %96

87:                                               ; preds = %84
  %88 = icmp sgt i32 %82, 1
  %89 = sub i32 1, %82
  %90 = select i1 %88, i32 %89, i32 0
  %91 = load ptr, ptr %69, align 4
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40, i32 noundef %90, ptr noundef %91) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %93 = icmp eq i32 %90, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %90) #14
  br label %150

96:                                               ; preds = %87, %86
  %97 = getelementptr inbounds %struct.overlay_changeset, ptr %12, i32 0, i32 1
  %98 = getelementptr inbounds %struct.overlay_changeset, ptr %12, i32 0, i32 1, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %97, align 4
  %101 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  store ptr %99, ptr %101, align 4
  store volatile ptr %100, ptr %99, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %97, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %98, align 4
  store i32 0, ptr %4, align 4
  %102 = call i32 @__of_changeset_revert_entries(ptr noundef %18, ptr noundef nonnull %4) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %96
  %105 = load i32, ptr %4, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %150, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr @devicetree_state_flags, align 4
  %109 = or i32 %108, 2
  store i32 %109, ptr @devicetree_state_flags, align 4
  br label %150

110:                                              ; preds = %96
  %111 = call i32 @__of_changeset_revert_notify(ptr noundef %18) #13
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %111) #14
  br label %115

115:                                              ; preds = %113, %110
  store i32 0, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 0, ptr %2, align 8, !annotation !8
  %116 = load i32, ptr %64, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.overlay_changeset, ptr %12, i32 0, i32 5
  %120 = getelementptr inbounds %struct.of_overlay_notify_data, ptr %2, i32 0, i32 1
  br label %125

121:                                              ; preds = %135
  %122 = add nuw nsw i32 %126, 1
  %123 = load i32, ptr %64, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %121, %118
  %126 = phi i32 [ 0, %118 ], [ %122, %121 ]
  %127 = load ptr, ptr %119, align 4
  %128 = getelementptr %struct.fragment, ptr %127, i32 %126
  %129 = getelementptr %struct.fragment, ptr %127, i32 %126, i32 1
  %130 = load ptr, ptr %129, align 4
  store ptr %130, ptr %120, align 4
  %131 = load ptr, ptr %128, align 4
  store ptr %131, ptr %2, align 8
  %132 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @overlay_notify_chain, i32 noundef 3, ptr noundef nonnull %2) #13
  %133 = and i32 %132, -32769
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %137, label %135

135:                                              ; preds = %125
  %136 = icmp eq i32 %132, 0
  br i1 %136, label %121, label %138

137:                                              ; preds = %125, %121, %115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %148

138:                                              ; preds = %135
  %139 = icmp sgt i32 %133, 1
  %140 = sub i32 1, %133
  %141 = select i1 %139, i32 %140, i32 0
  %142 = load ptr, ptr %120, align 4
  %143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.41, i32 noundef %141, ptr noundef %142) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %144 = icmp eq i32 %141, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %138
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %141) #14
  %147 = select i1 %112, i32 %141, i32 %111
  br label %148

148:                                              ; preds = %145, %138, %137
  %149 = phi i32 [ %111, %138 ], [ %147, %145 ], [ %111, %137 ]
  call fastcc void @free_overlay_changeset(ptr noundef nonnull %12)
  br label %150

150:                                              ; preds = %148, %107, %104, %94, %57, %14
  %151 = phi i32 [ %90, %94 ], [ %102, %107 ], [ %102, %104 ], [ %149, %148 ], [ -19, %14 ], [ -16, %57 ]
  call void @mutex_unlock(ptr noundef nonnull @of_mutex) #13
  br label %152

152:                                              ; preds = %150, %8
  %153 = phi i32 [ -16, %8 ], [ %151, %150 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %153
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @overlay_notify(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.of_overlay_notify_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.of_overlay_notify_data, ptr %3, i32 0, i32 1
  br label %14

10:                                               ; preds = %24
  %11 = add nuw nsw i32 %15, 1
  %12 = load i32, ptr %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10, %7
  %15 = phi i32 [ 0, %7 ], [ %11, %10 ]
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr %struct.fragment, ptr %16, i32 %15
  %18 = getelementptr %struct.fragment, ptr %16, i32 %15, i32 1
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %9, align 4
  %20 = load ptr, ptr %17, align 4
  store ptr %20, ptr %3, align 8
  %21 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @overlay_notify_chain, i32 noundef %1, ptr noundef nonnull %3) #13
  %22 = and i32 %21, -32769
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %34, label %24

24:                                               ; preds = %14
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %10, label %26

26:                                               ; preds = %24
  %27 = icmp sgt i32 %22, 1
  %28 = sub i32 1, %22
  %29 = select i1 %27, i32 %28, i32 0
  %30 = getelementptr [4 x ptr], ptr @of_overlay_action_name, i32 0, i32 %1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %9, align 4
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %31, i32 noundef %29, ptr noundef %32) #14
  br label %34

34:                                               ; preds = %26, %14, %10, %2
  %35 = phi i32 [ %29, %26 ], [ 0, %2 ], [ 0, %14 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_changeset_revert_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_changeset_revert_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_overlay_changeset(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @of_changeset_destroy(ptr noundef %2) #13
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i32, ptr %0, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @idr_remove(ptr noundef nonnull @ovcs_idr, i32 noundef %7) #13
  br label %11

11:                                               ; preds = %9, %6
  %12 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 5
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ 0, %15 ], [ %25, %17 ]
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr %struct.fragment, ptr %19, i32 %18, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @of_node_put(ptr noundef %21) #13
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr %struct.fragment, ptr %22, i32 %18
  %24 = load ptr, ptr %23, align 4
  tail call void @of_node_put(ptr noundef %24) #13
  %25 = add nuw nsw i32 %18, 1
  %26 = load i32, ptr %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %17, label %28

28:                                               ; preds = %17, %11
  %29 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %30) #13
  %31 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #13
  %33 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  tail call void @kfree(ptr noundef %34) #13
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_overlay_remove_all() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ovcs_list, i32 0, i32 1), align 4
  br label %2

2:                                                ; preds = %5, %0
  %3 = phi ptr [ %1, %0 ], [ %7, %5 ]
  %4 = icmp eq ptr %3, @ovcs_list
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 -4
  %9 = tail call i32 @of_overlay_remove(ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %2, label %11

11:                                               ; preds = %5, %2
  %12 = phi i32 [ %9, %5 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_resolve_phandles(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_changeset_apply_entries(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_changeset_apply_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @build_changeset_next_level(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.target, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %13

9:                                                ; preds = %13
  %10 = getelementptr inbounds %struct.property, ptr %14, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ %11, %9 ], [ %7, %3 ]
  %15 = tail call fastcc i32 @add_changeset_property(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %14, i1 noundef zeroext false)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %9, label %95

17:                                               ; preds = %9, %3
  %18 = tail call ptr @of_get_next_child(ptr noundef %2, ptr noundef null) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %95, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.target, ptr %1, i32 0, i32 1
  %22 = getelementptr inbounds %struct.target, ptr %4, i32 0, i32 1
  %23 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 7
  br label %24

24:                                               ; preds = %92, %20
  %25 = phi ptr [ %18, %20 ], [ %93, %92 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %26 = getelementptr inbounds %struct.device_node, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = call ptr @strrchr(ptr noundef %27, i32 noundef 47) #13
  %29 = icmp eq ptr %28, null
  %30 = getelementptr i8, ptr %28, i32 1
  %31 = select i1 %29, ptr %27, ptr %30
  %32 = load ptr, ptr %1, align 4
  %33 = call ptr @of_get_next_child(ptr noundef %32, ptr noundef null) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %45, %24
  %36 = phi ptr [ %47, %45 ], [ %33, %24 ]
  %37 = getelementptr inbounds %struct.device_node, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = call ptr @strrchr(ptr noundef %38, i32 noundef 47) #13
  %40 = icmp eq ptr %39, null
  %41 = getelementptr i8, ptr %39, i32 1
  %42 = select i1 %40, ptr %38, ptr %41
  %43 = call i32 @strcasecmp(ptr noundef %31, ptr noundef %42) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %35
  %46 = load ptr, ptr %1, align 4
  %47 = call ptr @of_get_next_child(ptr noundef %46, ptr noundef nonnull %36) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %35

49:                                               ; preds = %45, %24
  %50 = call ptr @__of_node_dup(ptr noundef null, ptr noundef %31) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %83, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %1, align 4
  %54 = getelementptr inbounds %struct.device_node, ptr %50, i32 0, i32 6
  store ptr %53, ptr %54, align 4
  %55 = call ptr @__of_get_property(ptr noundef nonnull %25, ptr noundef nonnull @.str.22, ptr noundef null) #13
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr @.str.32, ptr %55
  store ptr %57, ptr %50, align 4
  %58 = call ptr @__of_get_property(ptr noundef nonnull %25, ptr noundef nonnull @.str.23, ptr noundef nonnull %5) #13
  %59 = icmp ne ptr %58, null
  %60 = load i32, ptr %5, align 4
  %61 = icmp eq i32 %60, 4
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i32, ptr %58, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64) #13
  %66 = getelementptr inbounds %struct.device_node, ptr %50, i32 0, i32 1
  store i32 %65, ptr %66, align 4
  br label %67

67:                                               ; preds = %63, %52
  %68 = getelementptr inbounds %struct.device_node, ptr %50, i32 0, i32 10
  call void @_set_bit(i32 noundef 5, ptr noundef %68) #13
  %69 = call i32 @of_changeset_action(ptr noundef %23, i32 noundef 1, ptr noundef nonnull %50, ptr noundef null) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  store ptr %50, ptr %4, align 8
  br label %85

72:                                               ; preds = %35
  %73 = getelementptr inbounds %struct.device_node, ptr %25, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.device_node, ptr %36, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call void @of_node_put(ptr noundef nonnull %36) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %90

81:                                               ; preds = %76, %72
  store ptr %36, ptr %4, align 8
  %82 = load i8, ptr %21, align 4, !range !10
  br label %85

83:                                               ; preds = %67, %49
  %84 = phi i32 [ %69, %67 ], [ -12, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %90

85:                                               ; preds = %81, %71
  %86 = phi i8 [ %82, %81 ], [ 0, %71 ]
  %87 = phi ptr [ %36, %81 ], [ %50, %71 ]
  store i8 %86, ptr %22, align 4
  %88 = call fastcc i32 @build_changeset_next_level(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %25) #13
  call void @of_node_put(ptr noundef nonnull %87) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85, %83, %80
  %91 = phi i32 [ %84, %83 ], [ -22, %80 ], [ %88, %85 ]
  call void @of_node_put(ptr noundef nonnull %25) #13
  br label %95

92:                                               ; preds = %85
  %93 = call ptr @of_get_next_child(ptr noundef %2, ptr noundef nonnull %25) #13
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %24

95:                                               ; preds = %92, %90, %17, %13
  %96 = phi i32 [ %91, %90 ], [ 0, %17 ], [ 0, %92 ], [ %15, %13 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_changeset_property(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.target, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %63, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(5) @.str.22)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %170, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(8) @.str.23)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %170, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(14) @.str.24)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %170, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 4
  %20 = tail call ptr @of_find_property(ptr noundef %19, ptr noundef %9, ptr noundef null) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 4
  %24 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(15) @.str.25)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.property, ptr %20, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.property, ptr %2, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.property, ptr %20, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.property, ptr %2, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @bcmp(ptr %34, ptr %36, i32 %28) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %170, label %39

39:                                               ; preds = %32, %26
  %40 = load ptr, ptr %1, align 4
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %40) #14
  br label %170

42:                                               ; preds = %22
  %43 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(12) @.str.27)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.property, ptr %20, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.property, ptr %2, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.property, ptr %20, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.property, ptr %2, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @bcmp(ptr %53, ptr %55, i32 %47) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %170, label %58

58:                                               ; preds = %51, %45
  %59 = load ptr, ptr %1, align 4
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %59) #14
  br label %170

61:                                               ; preds = %18
  br i1 %3, label %64, label %123

62:                                               ; preds = %42
  br i1 %3, label %170, label %123

63:                                               ; preds = %4
  br i1 %3, label %64, label %123

64:                                               ; preds = %63, %61
  %65 = getelementptr inbounds %struct.property, ptr %2, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %170, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.property, ptr %2, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @strnlen(ptr noundef nonnull %66, i32 noundef %70) #13
  %72 = icmp ult i32 %71, %70
  br i1 %72, label %73, label %170

73:                                               ; preds = %68
  %74 = tail call i32 @strlen(ptr noundef nonnull %66) #13
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %170, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %66, i32 1
  %80 = tail call ptr @__of_find_node_by_path(ptr noundef %78, ptr noundef %79) #13
  %81 = tail call ptr @__of_find_node_by_path(ptr noundef %80, ptr noundef nonnull @.str.30) #13
  tail call void @of_node_put(ptr noundef %80) #13
  tail call void @of_node_put(ptr noundef %81) #13
  %82 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %170

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  br label %88

88:                                               ; preds = %93, %85
  %89 = phi i32 [ 0, %85 ], [ %94, %93 ]
  %90 = getelementptr %struct.fragment, ptr %87, i32 %89
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %81
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = add nuw nsw i32 %89, 1
  %95 = icmp eq i32 %94, %83
  br i1 %95, label %170, label %88

96:                                               ; preds = %88
  %97 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef %81) #13
  %98 = icmp sgt i32 %97, %74
  br i1 %98, label %170, label %99

99:                                               ; preds = %96
  %100 = getelementptr i8, ptr %66, i32 %97
  %101 = tail call i32 @strlen(ptr noundef %100) #13
  %102 = getelementptr %struct.fragment, ptr %87, i32 %89, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.31, ptr noundef %103) #13
  %105 = icmp eq ptr %104, null
  br i1 %105, label %170, label %106

106:                                              ; preds = %99
  %107 = tail call i32 @strlen(ptr noundef nonnull %104) #13
  %108 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %109 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %108, i32 noundef 3520, i32 noundef 52) #16
  %110 = icmp eq ptr %109, null
  br i1 %110, label %127, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr %2, align 4
  %113 = tail call noalias ptr @kstrdup(ptr noundef %112, i32 noundef 3264) #13
  store ptr %113, ptr %109, align 8
  %114 = add i32 %107, %101
  %115 = add i32 %114, 1
  %116 = getelementptr inbounds %struct.property, ptr %109, i32 0, i32 1
  store i32 %115, ptr %116, align 4
  %117 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %115, i32 noundef 3520) #15
  %118 = getelementptr inbounds %struct.property, ptr %109, i32 0, i32 2
  store ptr %117, ptr %118, align 8
  %119 = icmp eq ptr %113, null
  %120 = icmp eq ptr %117, null
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %111
  tail call void @kfree(ptr noundef %113) #13
  tail call void @kfree(ptr noundef %117) #13
  tail call void @kfree(ptr noundef nonnull %109) #13
  br label %127

123:                                              ; preds = %63, %62, %61
  %124 = phi i1 [ true, %63 ], [ %21, %61 ], [ false, %62 ]
  %125 = tail call ptr @__of_prop_dup(ptr noundef %2, i32 noundef 3264) #13
  %126 = icmp eq ptr %125, null
  br i1 %126, label %170, label %133

127:                                              ; preds = %122, %106
  tail call void @kfree(ptr noundef nonnull %104) #13
  br label %170

128:                                              ; preds = %111
  %129 = tail call ptr @strcpy(ptr noundef nonnull %117, ptr noundef nonnull %104) #13
  %130 = getelementptr i8, ptr %117, i32 %107
  %131 = tail call ptr @strcpy(ptr noundef %130, ptr noundef %100) #13
  %132 = getelementptr inbounds %struct.property, ptr %109, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %132) #13
  tail call void @kfree(ptr noundef nonnull %104) #13
  br label %134

133:                                              ; preds = %123
  br i1 %124, label %134, label %149

134:                                              ; preds = %133, %128
  %135 = phi ptr [ %109, %128 ], [ %125, %133 ]
  %136 = load i8, ptr %5, align 4, !range !10
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load ptr, ptr %1, align 4
  %140 = getelementptr inbounds %struct.device_node, ptr %139, i32 0, i32 5
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.property, ptr %135, i32 0, i32 3
  store ptr %141, ptr %142, align 4
  %143 = load ptr, ptr %1, align 4
  %144 = getelementptr inbounds %struct.device_node, ptr %143, i32 0, i32 5
  store ptr %135, ptr %144, align 4
  br label %145

145:                                              ; preds = %138, %134
  %146 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 7
  %147 = load ptr, ptr %1, align 4
  %148 = tail call i32 @of_changeset_action(ptr noundef %146, i32 noundef 3, ptr noundef %147, ptr noundef nonnull %135) #13
  br label %153

149:                                              ; preds = %133
  %150 = getelementptr inbounds %struct.overlay_changeset, ptr %0, i32 0, i32 7
  %151 = load ptr, ptr %1, align 4
  %152 = tail call i32 @of_changeset_action(ptr noundef %150, i32 noundef 5, ptr noundef %151, ptr noundef nonnull %125) #13
  br label %153

153:                                              ; preds = %149, %145
  %154 = phi ptr [ %125, %149 ], [ %135, %145 ]
  %155 = phi i32 [ %152, %149 ], [ %148, %145 ]
  %156 = load ptr, ptr %1, align 4
  %157 = getelementptr inbounds %struct.device_node, ptr %156, i32 0, i32 10
  %158 = load volatile i32, ptr %157, align 4
  %159 = and i32 %158, 32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %153
  %162 = load ptr, ptr %154, align 4
  %163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %156, ptr noundef %162) #14
  br label %164

164:                                              ; preds = %161, %153
  %165 = icmp eq i32 %155, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %164
  %167 = load ptr, ptr %154, align 4
  tail call void @kfree(ptr noundef %167) #13
  %168 = getelementptr inbounds %struct.property, ptr %154, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  tail call void @kfree(ptr noundef %169) #13
  tail call void @kfree(ptr noundef nonnull %154) #13
  br label %170

170:                                              ; preds = %166, %164, %127, %123, %99, %96, %93, %76, %73, %68, %64, %62, %58, %51, %39, %32, %15, %12, %8
  %171 = phi i32 [ 0, %15 ], [ 0, %12 ], [ 0, %8 ], [ 0, %32 ], [ -22, %39 ], [ 0, %51 ], [ -22, %58 ], [ -12, %123 ], [ %155, %166 ], [ 0, %164 ], [ -12, %64 ], [ -12, %68 ], [ -12, %73 ], [ -12, %96 ], [ -12, %99 ], [ -12, %76 ], [ -22, %62 ], [ -12, %127 ], [ -12, %93 ]
  ret i32 %171
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_prop_dup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_find_node_by_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_changeset_action(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_node_dup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @find_node(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %12, %4
  %8 = phi ptr [ %13, %12 ], [ %5, %4 ]
  %9 = tail call fastcc i32 @find_node(ptr noundef nonnull %8, ptr noundef %1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @of_node_put(ptr noundef nonnull %8) #13
  br label %15

12:                                               ; preds = %7
  %13 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %8) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %12, %11, %4, %2
  %16 = phi i32 [ 1, %11 ], [ 1, %2 ], [ 0, %4 ], [ 0, %12 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_changeset_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
