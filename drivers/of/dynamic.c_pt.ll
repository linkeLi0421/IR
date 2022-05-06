; ModuleID = '/llk/IR/drivers/of/dynamic.c_pt.bc'
source_filename = "../drivers/of/dynamic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_node_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_node_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_node_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_node_put:\09\09\09\09\09"
module asm "\09.asciz \09\22of_node_put\22\09\09\09\09\09"
module asm "__kstrtabns_of_node_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reconfig_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reconfig_notifier_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_reconfig_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reconfig_notifier_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reconfig_notifier_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_of_reconfig_notifier_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_reconfig_get_state_change:\09\09\09\09\09"
module asm "\09.asciz \09\22of_reconfig_get_state_change\22\09\09\09\09\09"
module asm "__kstrtabns_of_reconfig_get_state_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_detach_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_detach_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_detach_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_changeset_init:\09\09\09\09\09"
module asm "\09.asciz \09\22of_changeset_init\22\09\09\09\09\09"
module asm "__kstrtabns_of_changeset_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_changeset_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22of_changeset_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_of_changeset_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_changeset_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22of_changeset_apply\22\09\09\09\09\09"
module asm "__kstrtabns_of_changeset_apply:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_changeset_revert:\09\09\09\09\09"
module asm "\09.asciz \09\22of_changeset_revert\22\09\09\09\09\09"
module asm "__kstrtabns_of_changeset_revert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_changeset_action:\09\09\09\09\09"
module asm "\09.asciz \09\22of_changeset_action\22\09\09\09\09\09"
module asm "__kstrtabns_of_changeset_action:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.of_reconfig_data = type { ptr, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.of_changeset_entry = type { %struct.list_head, i32, ptr, ptr, ptr }

@__kstrtab_of_node_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_node_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_node_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_node_get to i32), ptr @__kstrtab_of_node_get, ptr @__kstrtabns_of_node_get }, section "___ksymtab+of_node_get", align 4
@__kstrtab_of_node_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_node_put = external dso_local constant [0 x i8], align 1
@__ksymtab_of_node_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_node_put to i32), ptr @__kstrtab_of_node_put, ptr @__kstrtabns_of_node_put }, section "___ksymtab+of_node_put", align 4
@of_reconfig_chain = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_reconfig_chain, i64 16), ptr getelementptr (i8, ptr @of_reconfig_chain, i64 16) } }, ptr null }, align 4
@__kstrtab_of_reconfig_notifier_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reconfig_notifier_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reconfig_notifier_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reconfig_notifier_register to i32), ptr @__kstrtab_of_reconfig_notifier_register, ptr @__kstrtabns_of_reconfig_notifier_register }, section "___ksymtab_gpl+of_reconfig_notifier_register", align 4
@__kstrtab_of_reconfig_notifier_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reconfig_notifier_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reconfig_notifier_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reconfig_notifier_unregister to i32), ptr @__kstrtab_of_reconfig_notifier_unregister, ptr @__kstrtabns_of_reconfig_notifier_unregister }, section "___ksymtab_gpl+of_reconfig_notifier_unregister", align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"okay\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@__kstrtab_of_reconfig_get_state_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_reconfig_get_state_change = external dso_local constant [0 x i8], align 1
@__ksymtab_of_reconfig_get_state_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_reconfig_get_state_change to i32), ptr @__kstrtab_of_reconfig_get_state_change, ptr @__kstrtabns_of_reconfig_get_state_change }, section "___ksymtab_gpl+of_reconfig_get_state_change", align 4
@of_mutex = external dso_local global %struct.mutex, align 4
@devtree_lock = external dso_local global %struct.raw_spinlock, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"drivers/of/dynamic.c\00", align 1
@__kstrtab_of_detach_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_detach_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_detach_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_detach_node to i32), ptr @__kstrtab_of_detach_node, ptr @__kstrtabns_of_detach_node }, section "___ksymtab_gpl+of_detach_node", align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"\013OF: ERROR: Bad of_node_put() on %pOF\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"\013OF: ERROR: memory leak before free overlay changeset,  %pOF\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"\013OF: ERROR: %s(), unexpected properties in %pOF\0A\00", align 1
@__func__.of_node_release = private unnamed_addr constant [16 x i8] c"of_node_release\00", align 1
@__kstrtab_of_changeset_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_changeset_init = external dso_local constant [0 x i8], align 1
@__ksymtab_of_changeset_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_changeset_init to i32), ptr @__kstrtab_of_changeset_init, ptr @__kstrtabns_of_changeset_init }, section "___ksymtab_gpl+of_changeset_init", align 4
@__kstrtab_of_changeset_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_changeset_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_of_changeset_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_changeset_destroy to i32), ptr @__kstrtab_of_changeset_destroy, ptr @__kstrtabns_of_changeset_destroy }, section "___ksymtab_gpl+of_changeset_destroy", align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"\013OF: Error applying changeset (%d)\0A\00", align 1
@__kstrtab_of_changeset_apply = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_changeset_apply = external dso_local constant [0 x i8], align 1
@__ksymtab_of_changeset_apply = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_changeset_apply to i32), ptr @__kstrtab_of_changeset_apply, ptr @__kstrtabns_of_changeset_apply }, section "___ksymtab_gpl+of_changeset_apply", align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"\013OF: Error reverting changeset (%d)\0A\00", align 1
@__kstrtab_of_changeset_revert = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_changeset_revert = external dso_local constant [0 x i8], align 1
@__ksymtab_of_changeset_revert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_changeset_revert to i32), ptr @__kstrtab_of_changeset_revert, ptr @__kstrtabns_of_changeset_revert }, section "___ksymtab_gpl+of_changeset_revert", align 4
@__kstrtab_of_changeset_action = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_changeset_action = external dso_local constant [0 x i8], align 1
@__ksymtab_of_changeset_action = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_changeset_action to i32), ptr @__kstrtab_of_changeset_action, ptr @__kstrtabns_of_changeset_action }, section "___ksymtab_gpl+of_changeset_action", align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@of_node_ktype = external dso_local global %struct.kobj_type, align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.13 = private unnamed_addr constant [148 x i8] c"\013OF: ERROR: memory leak, expected refcount 1 instead of %d, of_node_get()/of_node_put() unbalanced - destroy cset entry: attach overlay node %pOF\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"\013OF: changeset: add_property failed @%pOF/%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"\013OF: changeset: remove_property failed @%pOF/%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"\013OF: changeset: update_property failed @%pOF/%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"\013OF: invalid devicetree changeset action: %i\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"\013OF: changeset notifier error @%pOF\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_of_changeset_action, ptr @__ksymtab_of_changeset_apply, ptr @__ksymtab_of_changeset_destroy, ptr @__ksymtab_of_changeset_init, ptr @__ksymtab_of_changeset_revert, ptr @__ksymtab_of_detach_node, ptr @__ksymtab_of_node_get, ptr @__ksymtab_of_node_put, ptr @__ksymtab_of_reconfig_get_state_change, ptr @__ksymtab_of_reconfig_notifier_register, ptr @__ksymtab_of_reconfig_notifier_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_node_get(ptr noundef returned %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9
  %5 = tail call ptr @kobject_get(ptr noundef %4) #10
  br label %6

6:                                                ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_node_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 9
  tail call void @kobject_put(ptr noundef %4) #10
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_reconfig_notifier_register(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @of_reconfig_chain, ptr noundef %0) #10
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_reconfig_notifier_unregister(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @of_reconfig_chain, ptr noundef %0) #10
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_reconfig_notify(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @of_reconfig_chain, i32 noundef %0, ptr noundef %1) #10
  %4 = and i32 %3, -32769
  %5 = icmp sgt i32 %4, 1
  %6 = sub i32 1, %4
  %7 = select i1 %5, i32 %6, i32 0
  ret i32 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_reconfig_get_state_change(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  switch i32 %0, label %72 [
    i32 1, label %3
    i32 2, label %3
    i32 3, label %6
    i32 4, label %6
    i32 5, label %9
  ]

3:                                                ; preds = %2, %2
  %4 = load ptr, ptr %1, align 4
  %5 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef null) #10
  br label %14

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.of_reconfig_data, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.of_reconfig_data, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.of_reconfig_data, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %9, %6, %3
  %15 = phi ptr [ %11, %9 ], [ %8, %6 ], [ %5, %3 ]
  %16 = phi ptr [ %13, %9 ], [ null, %6 ], [ null, %3 ]
  %17 = icmp eq ptr %15, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %15, align 4
  %20 = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull dereferenceable(7) @.str)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.property, ptr %15, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(5) @.str.1)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = tail call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(3) @.str.2)
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i32 [ 1, %22 ], [ %30, %27 ]
  %33 = icmp eq ptr %16, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.property, ptr %16, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @strcmp(ptr noundef %36, ptr noundef nonnull dereferenceable(5) @.str.1)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = tail call i32 @strcmp(ptr noundef %36, ptr noundef nonnull dereferenceable(3) @.str.2)
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %39, %34, %31, %18, %14
  %44 = phi i1 [ false, %31 ], [ true, %18 ], [ true, %14 ], [ false, %39 ], [ false, %34 ]
  %45 = phi i32 [ %32, %31 ], [ -1, %18 ], [ -1, %14 ], [ %32, %39 ], [ %32, %34 ]
  %46 = phi i32 [ -1, %31 ], [ -1, %18 ], [ -1, %14 ], [ %42, %39 ], [ -1, %34 ]
  switch i32 %0, label %72 [
    i32 1, label %47
    i32 2, label %50
    i32 3, label %53
    i32 4, label %56
    i32 5, label %59
  ]

47:                                               ; preds = %43
  %48 = icmp ne i32 %45, 0
  %49 = zext i1 %48 to i32
  br label %65

50:                                               ; preds = %43
  %51 = icmp ne i32 %45, 0
  %52 = zext i1 %51 to i32
  br label %65

53:                                               ; preds = %43
  %54 = select i1 %44, i32 -1, i32 1
  %55 = select i1 %44, i32 -1, i32 %45
  br label %65

56:                                               ; preds = %43
  %57 = select i1 %44, i32 -1, i32 %45
  %58 = select i1 %44, i32 -1, i32 1
  br label %65

59:                                               ; preds = %43
  br i1 %44, label %72, label %60

60:                                               ; preds = %59
  %61 = icmp ne i32 %46, 0
  %62 = zext i1 %61 to i32
  %63 = icmp ne i32 %45, 0
  %64 = zext i1 %63 to i32
  br label %65

65:                                               ; preds = %60, %56, %53, %50, %47
  %66 = phi i32 [ %62, %60 ], [ %52, %50 ], [ 0, %47 ], [ %54, %53 ], [ %57, %56 ]
  %67 = phi i32 [ %64, %60 ], [ 0, %50 ], [ %49, %47 ], [ %55, %53 ], [ %58, %56 ]
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = icmp eq i32 %67, 0
  %71 = select i1 %70, i32 2, i32 1
  br label %72

72:                                               ; preds = %69, %65, %59, %43, %2
  %73 = phi i32 [ %71, %69 ], [ 0, %2 ], [ 0, %65 ], [ 0, %43 ], [ 0, %59 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_notify(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.of_reconfig_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %6 = tail call i32 @of_node_is_attached(ptr noundef %1) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  store ptr %1, ptr %5, align 4
  %9 = getelementptr inbounds %struct.of_reconfig_data, ptr %5, i32 0, i32 1
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.of_reconfig_data, ptr %5, i32 0, i32 2
  store ptr %3, ptr %10, align 4
  %11 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @of_reconfig_chain, i32 noundef %0, ptr noundef nonnull %5) #10
  %12 = and i32 %11, -32769
  %13 = icmp sgt i32 %12, 1
  %14 = sub i32 1, %12
  %15 = select i1 %13, i32 %14, i32 0
  br label %16

16:                                               ; preds = %8, %4
  %17 = phi i32 [ %15, %8 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_node_is_attached(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_attach_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.of_reconfig_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  store i64 0, ptr %3, align 4
  store ptr %0, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #10
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #10
  tail call fastcc void @__of_attach_node(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %4) #10
  %5 = tail call i32 @__of_attach_node_sysfs(ptr noundef %0) #10
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #10
  %6 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @of_reconfig_chain, i32 noundef 1, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__of_attach_node(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = tail call ptr @__of_get_property(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef null) #10
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @.str.10, ptr %8
  store ptr %10, ptr %0, align 4
  %11 = call ptr @__of_get_property(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call ptr @__of_get_property(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %2) #10
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %11, %7 ], [ %14, %13 ]
  %17 = icmp ne ptr %16, null
  %18 = load i32, ptr %2, align 4
  %19 = icmp sgt i32 %18, 3
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, ptr %16, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #10
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ %23, %21 ], [ 0, %15 ]
  %26 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.device_node, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 8
  store ptr %32, ptr %33, align 4
  store ptr %0, ptr %31, align 4
  call void @_clear_bit(i32 noundef 2, ptr noundef %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_attach_node_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__of_detach_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 260, i32 noundef 9, ptr noundef null) #10
  br label %29

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 264, i32 noundef 9, ptr noundef null) #10
  br label %29

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %23, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.device_node, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %16

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.device_node, ptr %17, i32 0, i32 8
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi ptr [ %22, %21 ], [ %13, %12 ]
  %25 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %24, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %2) #10
  %27 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  tail call void @__of_phandle_cache_inv_entry(i32 noundef %28) #10
  br label %29

29:                                               ; preds = %23, %11, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__of_phandle_cache_inv_entry(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_detach_node(ptr noundef %0) #0 {
  %2 = alloca %struct.of_reconfig_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  store i64 0, ptr %3, align 4
  store ptr %0, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #10
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #10
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 260, i32 noundef 9, ptr noundef null) #10
  br label %32

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !10

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 264, i32 noundef 9, ptr noundef null) #10
  br label %32

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %26, label %19

19:                                               ; preds = %19, %15
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.device_node, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %19

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.device_node, ptr %20, i32 0, i32 8
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi ptr [ %16, %15 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  store ptr %29, ptr %27, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %5) #10
  %30 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  tail call void @__of_phandle_cache_inv_entry(i32 noundef %31) #10
  br label %32

32:                                               ; preds = %26, %14, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %4) #10
  tail call void @__of_detach_node_sysfs(ptr noundef %0) #10
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #10
  %33 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @of_reconfig_chain, i32 noundef 2, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__of_detach_node_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_node_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 36
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %2) #11
  tail call void @dump_stack() #11
  br label %61

9:                                                ; preds = %1
  %10 = load volatile i32, ptr %3, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %61, label %13

13:                                               ; preds = %9
  %14 = load volatile i32, ptr %3, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load volatile i32, ptr %3, align 4
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %2) #11
  br label %61

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %0, i32 -20
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.of_node_release, ptr noundef %2) #11
  br label %29

29:                                               ; preds = %27, %23, %13
  %30 = getelementptr i8, ptr %0, i32 -20
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %33, %29
  %34 = phi ptr [ %36, %33 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct.property, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %34, align 4
  tail call void @kfree(ptr noundef %37) #10
  %38 = getelementptr inbounds %struct.property, ptr %34, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void @kfree(ptr noundef %39) #10
  tail call void @kfree(ptr noundef nonnull %34) #10
  %40 = icmp eq ptr %36, null
  br i1 %40, label %41, label %33

41:                                               ; preds = %33, %29
  %42 = getelementptr i8, ptr %0, i32 -16
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %45, %41
  %46 = phi ptr [ %48, %45 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.property, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %46, align 4
  tail call void @kfree(ptr noundef %49) #10
  %50 = getelementptr inbounds %struct.property, ptr %46, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  tail call void @kfree(ptr noundef %51) #10
  tail call void @kfree(ptr noundef nonnull %46) #10
  %52 = icmp eq ptr %48, null
  br i1 %52, label %53, label %45

53:                                               ; preds = %45, %41
  %54 = icmp eq ptr %2, null
  %55 = getelementptr i8, ptr %0, i32 -52
  %56 = select i1 %54, ptr null, ptr %55
  tail call void @fwnode_links_purge(ptr noundef %56) #10
  %57 = getelementptr i8, ptr %0, i32 -56
  %58 = load ptr, ptr %57, align 4
  tail call void @kfree(ptr noundef %58) #10
  %59 = getelementptr i8, ptr %0, i32 40
  %60 = load ptr, ptr %59, align 4
  tail call void @kfree(ptr noundef %60) #10
  tail call void @kfree(ptr noundef %2) #10
  br label %61

61:                                               ; preds = %53, %21, %9, %7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_links_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__of_prop_dup(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = or i32 %1, 256
  %4 = and i32 %1, 17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !9

6:                                                ; preds = %2
  %7 = and i32 %1, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %11, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %3, i32 noundef 52) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 4
  %18 = tail call noalias ptr @kstrdup(ptr noundef %17, i32 noundef %1) #10
  store ptr %18, ptr %14, align 8
  %19 = getelementptr inbounds %struct.property, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.property, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @kmemdup(ptr noundef %20, i32 noundef %22, i32 noundef %1) #10
  %24 = getelementptr inbounds %struct.property, ptr %14, i32 0, i32 2
  store ptr %23, ptr %24, align 8
  %25 = load i32, ptr %21, align 4
  %26 = getelementptr inbounds %struct.property, ptr %14, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = icmp eq ptr %18, null
  %28 = icmp eq ptr %23, null
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.property, ptr %14, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %31) #10
  br label %33

32:                                               ; preds = %16
  tail call void @kfree(ptr noundef %18) #10
  tail call void @kfree(ptr noundef %23) #10
  tail call void @kfree(ptr noundef nonnull %14) #10
  br label %33

33:                                               ; preds = %32, %30, %10
  %34 = phi ptr [ %14, %30 ], [ null, %32 ], [ null, %10 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__of_node_dup(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 108) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #10
  %8 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 2
  store ptr %7, ptr %8, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #10
  br label %40

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %12) #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 9
  tail call void @kobject_init(ptr noundef %13, ptr noundef nonnull @of_node_ktype) #10
  %14 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3, i32 1
  store ptr @of_fwnode_ops, ptr %14, align 8
  %15 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3, i32 4
  store volatile ptr %15, ptr %15, align 8
  %16 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3, i32 4, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3, i32 3
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3, i32 3, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %0, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %28

24:                                               ; preds = %32
  %25 = getelementptr inbounds %struct.property, ptr %29, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %24, %20
  %29 = phi ptr [ %26, %24 ], [ %22, %20 ]
  %30 = tail call ptr @__of_prop_dup(ptr noundef nonnull %29, i32 noundef 3264)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @__of_add_property(ptr noundef nonnull %4, ptr noundef nonnull %30) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %24, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %36) #10
  %37 = getelementptr inbounds %struct.property, ptr %30, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #10
  tail call void @kfree(ptr noundef nonnull %30) #10
  br label %39

39:                                               ; preds = %35, %28
  tail call void @kobject_put(ptr noundef %13) #10
  br label %40

40:                                               ; preds = %39, %24, %20, %11, %10, %2
  %41 = phi ptr [ null, %39 ], [ null, %10 ], [ null, %2 ], [ %4, %11 ], [ %4, %20 ], [ %4, %24 ]
  ret ptr %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_add_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_changeset_init(ptr noundef %0) #6 {
  store volatile ptr %0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_changeset_destroy(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %38, label %5

5:                                                ; preds = %33, %1
  %6 = phi ptr [ %8, %33 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.of_changeset_entry, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %27

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.of_changeset_entry, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 10
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 9, i32 6
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load volatile i32, ptr %20, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %24, ptr noundef %14) #11
  br label %27

26:                                               ; preds = %19
  tail call void @_set_bit(i32 noundef 6, ptr noundef %15) #10
  br label %27

27:                                               ; preds = %26, %23, %12, %5
  %28 = getelementptr inbounds %struct.of_changeset_entry, ptr %6, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.device_node, ptr %29, i32 0, i32 9
  tail call void @kobject_put(ptr noundef %32) #10
  br label %33

33:                                               ; preds = %31, %27
  %34 = load ptr, ptr %7, align 4
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @kfree(ptr noundef %6) #10
  %37 = icmp eq ptr %8, %0
  br i1 %37, label %38, label %5

38:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__of_changeset_apply_entries(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.of_changeset_entry, align 4
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %0, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @__of_changeset_entry_apply(ptr noundef %6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %4, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %9) #11
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %43, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.of_changeset_entry, ptr %3, i32 0, i32 4
  %18 = getelementptr inbounds %struct.of_changeset_entry, ptr %3, i32 0, i32 3
  %19 = getelementptr inbounds %struct.of_changeset_entry, ptr %3, i32 0, i32 1
  br label %20

20:                                               ; preds = %39, %16
  %21 = phi ptr [ %14, %16 ], [ %41, %39 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef align 4 dereferenceable(24) %21, i32 24, i1 false) #10
  %22 = getelementptr inbounds %struct.of_changeset_entry, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %35 [
    i32 1, label %24
    i32 2, label %25
    i32 3, label %26
    i32 4, label %27
    i32 5, label %28
  ]

24:                                               ; preds = %20
  store i32 2, ptr %19, align 4
  br label %35

25:                                               ; preds = %20
  store i32 1, ptr %19, align 4
  br label %35

26:                                               ; preds = %20
  store i32 4, ptr %19, align 4
  br label %35

27:                                               ; preds = %20
  store i32 3, ptr %19, align 4
  br label %35

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.of_changeset_entry, ptr %21, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr %17, align 4
  %31 = getelementptr inbounds %struct.of_changeset_entry, ptr %21, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr %18, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 4, ptr %19, align 4
  store ptr %30, ptr %18, align 4
  br label %35

35:                                               ; preds = %34, %28, %27, %26, %25, %24, %20
  %36 = call fastcc i32 @__of_changeset_entry_apply(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 %36, ptr %1, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %43, label %20

43:                                               ; preds = %39, %11, %4
  %44 = phi i32 [ %9, %11 ], [ %9, %39 ], [ 0, %4 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__of_changeset_entry_apply(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #10
  %4 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %125 [
    i32 1, label %6
    i32 2, label %9
    i32 3, label %39
    i32 4, label %76
    i32 5, label %88
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call fastcc void @__of_attach_node(ptr noundef %8)
  br label %127

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 10
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !9

16:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 260, i32 noundef 9, ptr noundef null) #10
  br label %127

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !10

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 264, i32 noundef 9, ptr noundef null) #10
  br label %127

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %11
  br i1 %25, label %33, label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %29, %26 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.device_node, ptr %27, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %11
  br i1 %30, label %31, label %26

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.device_node, ptr %27, i32 0, i32 8
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi ptr [ %23, %22 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  store ptr %36, ptr %34, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %12) #10
  %37 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  tail call void @__of_phandle_cache_inv_entry(i32 noundef %38) #10
  br label %127

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.device_node, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %43, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %54, %45
  %50 = phi ptr [ %52, %54 ], [ %43, %45 ]
  %51 = getelementptr inbounds %struct.property, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = icmp eq ptr %52, %47
  br i1 %55, label %56, label %49

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.property, ptr %50, i32 0, i32 3
  br label %58

58:                                               ; preds = %56, %45
  %59 = phi ptr [ %42, %45 ], [ %57, %56 ]
  %60 = getelementptr inbounds %struct.property, ptr %47, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  store ptr %61, ptr %59, align 4
  %62 = load ptr, ptr %46, align 4
  %63 = getelementptr inbounds %struct.property, ptr %62, i32 0, i32 3
  store ptr null, ptr %63, align 4
  %64 = load ptr, ptr %40, align 4
  br label %65

65:                                               ; preds = %58, %49, %39
  %66 = phi ptr [ %41, %39 ], [ %64, %58 ], [ %41, %49 ]
  %67 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 @__of_add_property(ptr noundef %66, ptr noundef %68) #10
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %127, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %40, align 4
  %73 = load ptr, ptr %67, align 4
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %72, ptr noundef %74) #11
  br label %125

76:                                               ; preds = %1
  %77 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @__of_remove_property(ptr noundef %78, ptr noundef %80) #10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %127, label %83

83:                                               ; preds = %76
  %84 = load ptr, ptr %77, align 4
  %85 = load ptr, ptr %79, align 4
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %84, ptr noundef %86) #11
  br label %125

88:                                               ; preds = %1
  %89 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.device_node, ptr %90, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %114, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %92, %96
  br i1 %97, label %107, label %98

98:                                               ; preds = %103, %94
  %99 = phi ptr [ %101, %103 ], [ %92, %94 ]
  %100 = getelementptr inbounds %struct.property, ptr %99, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %114, label %103

103:                                              ; preds = %98
  %104 = icmp eq ptr %101, %96
  br i1 %104, label %105, label %98

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.property, ptr %99, i32 0, i32 3
  br label %107

107:                                              ; preds = %105, %94
  %108 = phi ptr [ %91, %94 ], [ %106, %105 ]
  %109 = getelementptr inbounds %struct.property, ptr %96, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  store ptr %110, ptr %108, align 4
  %111 = load ptr, ptr %95, align 4
  %112 = getelementptr inbounds %struct.property, ptr %111, i32 0, i32 3
  store ptr null, ptr %112, align 4
  %113 = load ptr, ptr %89, align 4
  br label %114

114:                                              ; preds = %107, %98, %88
  %115 = phi ptr [ %90, %88 ], [ %113, %107 ], [ %90, %98 ]
  %116 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = call i32 @__of_update_property(ptr noundef %115, ptr noundef %117, ptr noundef nonnull %2) #10
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %89, align 4
  %122 = load ptr, ptr %116, align 4
  %123 = load ptr, ptr %122, align 4
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %121, ptr noundef %123) #11
  br label %125

125:                                              ; preds = %120, %83, %71, %1
  %126 = phi i32 [ %118, %120 ], [ %81, %83 ], [ %69, %71 ], [ -22, %1 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #10
  br label %154

127:                                              ; preds = %114, %76, %65, %33, %21, %16, %6
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #10
  %128 = load i32, ptr %4, align 4
  switch i32 %128, label %154 [
    i32 1, label %129
    i32 2, label %133
    i32 3, label %136
    i32 4, label %142
    i32 5, label %147
  ]

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = call i32 @__of_attach_node_sysfs(ptr noundef %131) #10
  br label %154

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  call void @__of_detach_node_sysfs(ptr noundef %135) #10
  br label %154

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = call i32 @__of_add_property_sysfs(ptr noundef %138, ptr noundef %140) #10
  br label %154

142:                                              ; preds = %127
  %143 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 3
  %146 = load ptr, ptr %145, align 4
  call void @__of_remove_property_sysfs(ptr noundef %144, ptr noundef %146) #10
  br label %154

147:                                              ; preds = %127
  %148 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 4
  %153 = load ptr, ptr %152, align 4
  call void @__of_update_property_sysfs(ptr noundef %149, ptr noundef %151, ptr noundef %153) #10
  br label %154

154:                                              ; preds = %147, %142, %136, %133, %129, %127, %125
  %155 = phi i32 [ %126, %125 ], [ 0, %127 ], [ 0, %147 ], [ 0, %142 ], [ 0, %136 ], [ 0, %133 ], [ 0, %129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__of_changeset_apply_notify(ptr noundef readonly %0) local_unnamed_addr #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #10
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %12, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %10, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %9, %4 ], [ 0, %1 ]
  %7 = tail call fastcc i32 @__of_changeset_entry_notify(ptr noundef %5, i1 noundef zeroext false)
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 %6, i32 %7
  %10 = load ptr, ptr %5, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %4, %1
  %13 = phi i32 [ 0, %1 ], [ %9, %4 ]
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #10
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__of_changeset_entry_notify(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.of_reconfig_data, align 4
  %4 = alloca %struct.of_reconfig_data, align 4
  %5 = alloca %struct.of_changeset_entry, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !8
  br i1 %1, label %6, label %27

6:                                                ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef align 4 dereferenceable(24) %0, i32 24, i1 false) #10
  %7 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %27 [
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
    i32 5, label %17
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.of_changeset_entry, ptr %5, i32 0, i32 1
  store i32 2, ptr %10, align 4
  br label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.of_changeset_entry, ptr %5, i32 0, i32 1
  store i32 1, ptr %12, align 4
  br label %27

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.of_changeset_entry, ptr %5, i32 0, i32 1
  store i32 4, ptr %14, align 4
  br label %27

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.of_changeset_entry, ptr %5, i32 0, i32 1
  store i32 3, ptr %16, align 4
  br label %27

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.of_changeset_entry, ptr %5, i32 0, i32 4
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.of_changeset_entry, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.of_changeset_entry, ptr %5, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.of_changeset_entry, ptr %5, i32 0, i32 1
  store i32 4, ptr %26, align 4
  store ptr %19, ptr %23, align 4
  br label %27

27:                                               ; preds = %25, %17, %15, %13, %11, %9, %6, %2
  %28 = phi ptr [ %0, %2 ], [ %5, %6 ], [ %5, %9 ], [ %5, %11 ], [ %5, %13 ], [ %5, %15 ], [ %5, %17 ], [ %5, %25 ]
  %29 = getelementptr inbounds %struct.of_changeset_entry, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %58 [
    i32 1, label %31
    i32 2, label %31
    i32 3, label %39
    i32 4, label %39
    i32 5, label %39
  ]

31:                                               ; preds = %27, %27
  %32 = getelementptr inbounds i8, ptr %4, i32 4
  store i64 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.of_changeset_entry, ptr %28, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %4, align 4
  %35 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @of_reconfig_chain, i32 noundef %30, ptr noundef nonnull %4) #10
  %36 = and i32 %35, -32769
  %37 = icmp sgt i32 %36, 1
  %38 = sub i32 1, %36
  br i1 %37, label %60, label %68

39:                                               ; preds = %27, %27, %27
  %40 = getelementptr inbounds %struct.of_changeset_entry, ptr %28, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.of_changeset_entry, ptr %28, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.of_changeset_entry, ptr %28, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %46 = tail call i32 @of_node_is_attached(ptr noundef %41) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %39
  store ptr %41, ptr %3, align 4
  %49 = getelementptr inbounds %struct.of_reconfig_data, ptr %3, i32 0, i32 1
  store ptr %43, ptr %49, align 4
  %50 = getelementptr inbounds %struct.of_reconfig_data, ptr %3, i32 0, i32 2
  store ptr %45, ptr %50, align 4
  %51 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @of_reconfig_chain, i32 noundef %30, ptr noundef nonnull %3) #10
  %52 = and i32 %51, -32769
  %53 = icmp sgt i32 %52, 1
  %54 = sub i32 1, %52
  %55 = select i1 %53, i32 %54, i32 0
  br label %56

56:                                               ; preds = %48, %39
  %57 = phi i32 [ %55, %48 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  br label %60

58:                                               ; preds = %27
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %30) #11
  br label %63

60:                                               ; preds = %56, %31
  %61 = phi i32 [ %57, %56 ], [ %38, %31 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ -22, %58 ], [ %61, %60 ]
  %65 = getelementptr inbounds %struct.of_changeset_entry, ptr %28, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %66) #11
  br label %68

68:                                               ; preds = %63, %60, %31
  %69 = phi i32 [ %64, %63 ], [ 0, %60 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_changeset_apply(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = call i32 @__of_changeset_apply_entries(ptr noundef %0, ptr noundef nonnull %2) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #10
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %14, %8 ], [ %6, %5 ]
  %10 = phi i32 [ %13, %8 ], [ 0, %5 ]
  %11 = tail call fastcc i32 @__of_changeset_entry_notify(ptr noundef %9, i1 noundef zeroext false) #10
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 %10, i32 %11
  %14 = load ptr, ptr %9, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  %17 = phi i32 [ 0, %5 ], [ %13, %8 ]
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #10
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i32 [ %3, %1 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #10
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__of_changeset_revert_entries(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.of_changeset_entry, align 4
  %4 = getelementptr inbounds %struct.of_changeset_entry, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.of_changeset_entry, ptr %3, i32 0, i32 3
  %6 = getelementptr inbounds %struct.of_changeset_entry, ptr %3, i32 0, i32 1
  br label %7

7:                                                ; preds = %26, %2
  %8 = phi ptr [ %0, %2 ], [ %10, %26 ]
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %41, label %12

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, ptr noundef align 4 dereferenceable(24) %10, i32 24, i1 false) #10
  %13 = getelementptr inbounds %struct.of_changeset_entry, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %26 [
    i32 1, label %15
    i32 2, label %16
    i32 3, label %17
    i32 4, label %18
    i32 5, label %19
  ]

15:                                               ; preds = %12
  store i32 2, ptr %6, align 4
  br label %26

16:                                               ; preds = %12
  store i32 1, ptr %6, align 4
  br label %26

17:                                               ; preds = %12
  store i32 4, ptr %6, align 4
  br label %26

18:                                               ; preds = %12
  store i32 3, ptr %6, align 4
  br label %26

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.of_changeset_entry, ptr %10, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %4, align 4
  %22 = getelementptr inbounds %struct.of_changeset_entry, ptr %10, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %5, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 4, ptr %6, align 4
  store ptr %21, ptr %5, align 4
  br label %26

26:                                               ; preds = %25, %19, %18, %17, %16, %15, %12
  %27 = call fastcc i32 @__of_changeset_entry_apply(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %7, label %29

29:                                               ; preds = %26
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %27) #11
  %31 = load ptr, ptr %10, align 4
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %41, label %33

33:                                               ; preds = %38, %29
  %34 = phi ptr [ %39, %38 ], [ %31, %29 ]
  %35 = tail call fastcc i32 @__of_changeset_entry_apply(ptr noundef %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 %35, ptr %1, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load ptr, ptr %34, align 4
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %33

41:                                               ; preds = %38, %29, %7
  %42 = phi i32 [ %27, %29 ], [ %27, %38 ], [ 0, %7 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__of_changeset_revert_notify(ptr noundef readonly %0) local_unnamed_addr #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %14, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %12, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %10, %5 ], [ 0, %1 ]
  %8 = tail call fastcc i32 @__of_changeset_entry_notify(ptr noundef %6, i1 noundef zeroext true)
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 %7, i32 %8
  %11 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %1
  %15 = phi i32 [ 0, %1 ], [ %10, %5 ]
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #10
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_changeset_revert(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %3 = call i32 @__of_changeset_revert_entries(ptr noundef %0, ptr noundef nonnull %2) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #10
  %6 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %18, label %9

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %16, %9 ], [ %7, %5 ]
  %11 = phi i32 [ %14, %9 ], [ 0, %5 ]
  %12 = tail call fastcc i32 @__of_changeset_entry_notify(ptr noundef %10, i1 noundef zeroext true) #10
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %11, i32 %12
  %15 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %9

18:                                               ; preds = %9, %5
  %19 = phi i32 [ 0, %5 ], [ %14, %9 ]
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #10
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ %3, %1 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #10
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_changeset_action(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 24) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.of_changeset_entry, ptr %6, i32 0, i32 1
  store i32 %1, ptr %9, align 8
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 9
  %13 = tail call ptr @kobject_get(ptr noundef %12) #10
  br label %14

14:                                               ; preds = %11, %8
  %15 = getelementptr inbounds %struct.of_changeset_entry, ptr %6, i32 0, i32 2
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.of_changeset_entry, ptr %6, i32 0, i32 3
  store ptr %3, ptr %16, align 8
  %17 = icmp eq i32 %1, 5
  %18 = icmp ne ptr %3, null
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 4
  %22 = tail call ptr @of_find_property(ptr noundef %2, ptr noundef %21, ptr noundef null) #10
  %23 = getelementptr inbounds %struct.of_changeset_entry, ptr %6, i32 0, i32 4
  store ptr %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  store ptr %6, ptr %25, align 4
  store ptr %0, ptr %6, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %6, ptr %26, align 4
  br label %28

28:                                               ; preds = %24, %4
  %29 = phi i32 [ 0, %24 ], [ -12, %4 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_remove_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_update_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_add_property_sysfs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__of_remove_property_sysfs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__of_update_property_sysfs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
