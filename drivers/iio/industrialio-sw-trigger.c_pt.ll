; ModuleID = '/llk/IR/drivers/iio/industrialio-sw-trigger.c_pt.bc'
source_filename = "../drivers/iio/industrialio-sw-trigger.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_register_sw_trigger_type:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_register_sw_trigger_type\22\09\09\09\09\09"
module asm "__kstrtabns_iio_register_sw_trigger_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_unregister_sw_trigger_type:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_unregister_sw_trigger_type\22\09\09\09\09\09"
module asm "__kstrtabns_iio_unregister_sw_trigger_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_sw_trigger_create:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_sw_trigger_create\22\09\09\09\09\09"
module asm "__kstrtabns_iio_sw_trigger_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_sw_trigger_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_sw_trigger_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_iio_sw_trigger_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iio_sw_trigger_type = type { ptr, ptr, ptr, %struct.list_head, ptr }
%struct.iio_sw_trigger = type { ptr, ptr, %struct.config_group }
%struct.iio_sw_trigger_ops = type { ptr, ptr }

@iio_trigger_types_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iio_trigger_types_lock, i64 12), ptr getelementptr (i8, ptr @iio_trigger_types_lock, i64 12) } }, align 4
@iio_trigger_types_list = internal global %struct.list_head { ptr @iio_trigger_types_list, ptr @iio_trigger_types_list }, align 4
@iio_triggers_group = internal unnamed_addr global ptr null, align 4
@iio_trigger_type_group_type = internal constant %struct.config_item_type { ptr null, ptr null, ptr @trigger_ops, ptr null, ptr null }, align 4
@__kstrtab_iio_register_sw_trigger_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_register_sw_trigger_type = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_register_sw_trigger_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_register_sw_trigger_type to i32), ptr @__kstrtab_iio_register_sw_trigger_type, ptr @__kstrtabns_iio_register_sw_trigger_type }, section "___ksymtab+iio_register_sw_trigger_type", align 4
@__kstrtab_iio_unregister_sw_trigger_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_unregister_sw_trigger_type = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_unregister_sw_trigger_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_unregister_sw_trigger_type to i32), ptr @__kstrtab_iio_unregister_sw_trigger_type, ptr @__kstrtabns_iio_unregister_sw_trigger_type }, section "___ksymtab+iio_unregister_sw_trigger_type", align 4
@.str = private unnamed_addr constant [28 x i8] c"\013Invalid trigger type: %s\0A\00", align 1
@__kstrtab_iio_sw_trigger_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_sw_trigger_create = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_sw_trigger_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_sw_trigger_create to i32), ptr @__kstrtab_iio_sw_trigger_create, ptr @__kstrtabns_iio_sw_trigger_create }, section "___ksymtab+iio_sw_trigger_create", align 4
@__kstrtab_iio_sw_trigger_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_sw_trigger_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_sw_trigger_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_sw_trigger_destroy to i32), ptr @__kstrtab_iio_sw_trigger_destroy, ptr @__kstrtabns_iio_sw_trigger_destroy }, section "___ksymtab+iio_sw_trigger_destroy", align 4
@__initcall__kmod_industrialio_sw_trigger__166_169_iio_sw_trigger_init6 = internal global ptr @iio_sw_trigger_init, section ".initcall6.init", align 4
@__exitcall_iio_sw_trigger_exit = internal global ptr @iio_sw_trigger_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [71 x i8] c"industrialio_sw_trigger.author=Daniel Baluta <daniel.baluta@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description168 = internal constant [77 x i8] c"industrialio_sw_trigger.description=Industrial I/O software triggers support\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [65 x i8] c"industrialio_sw_trigger.file=drivers/iio/industrialio-sw-trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [39 x i8] c"industrialio_sw_trigger.license=GPL v2\00", section ".modinfo", align 1
@trigger_ops = internal global %struct.configfs_group_operations { ptr null, ptr @trigger_make_group, ptr null, ptr null, ptr @trigger_drop_group }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@iio_configfs_subsys = external dso_local global %struct.configfs_subsystem, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"triggers\00", align 1
@iio_triggers_group_type = internal constant %struct.config_item_type zeroinitializer, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_iio_sw_trigger_exit, ptr @__initcall__kmod_industrialio_sw_trigger__166_169_iio_sw_trigger_init6, ptr @__ksymtab_iio_register_sw_trigger_type, ptr @__ksymtab_iio_sw_trigger_create, ptr @__ksymtab_iio_sw_trigger_destroy, ptr @__ksymtab_iio_unregister_sw_trigger_type, ptr @iio_sw_trigger_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_register_sw_trigger_type(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @iio_trigger_types_lock) #5
  %2 = load ptr, ptr %0, align 4
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @iio_trigger_types_list, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @iio_trigger_types_list
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -12
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %2) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %5, i32 -12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @mutex_unlock(ptr noundef nonnull @iio_trigger_types_lock) #5
  br label %27

16:                                               ; preds = %12, %3
  %17 = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @iio_trigger_types_list, i32 0, i32 1), align 4
  store ptr %17, ptr getelementptr inbounds (%struct.list_head, ptr @iio_trigger_types_list, i32 0, i32 1), align 4
  store ptr @iio_trigger_types_list, ptr %17, align 4
  %19 = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %0, i32 0, i32 3, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %17, ptr %18, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @iio_trigger_types_lock) #5
  %20 = load ptr, ptr @iio_triggers_group, align 4
  %21 = load ptr, ptr %0, align 4
  %22 = tail call ptr @configfs_register_default_group(ptr noundef %20, ptr noundef %21, ptr noundef nonnull @iio_trigger_type_group_type) #5
  %23 = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %0, i32 0, i32 4
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %25 = ptrtoint ptr %22 to i32
  %26 = select i1 %24, i32 %25, i32 0
  br label %27

27:                                               ; preds = %16, %15
  %28 = phi i32 [ -16, %15 ], [ %26, %16 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @configfs_register_default_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_unregister_sw_trigger_type(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @iio_trigger_types_lock) #5
  %2 = load ptr, ptr %0, align 4
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @iio_trigger_types_list, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @iio_trigger_types_list
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -12
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %2) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %5, i32 -12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %0, i32 0, i32 3, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  br label %21

21:                                               ; preds = %15, %12, %3
  tail call void @mutex_unlock(ptr noundef nonnull @iio_trigger_types_lock) #5
  %22 = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  tail call void @configfs_unregister_default_group(ptr noundef %23) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_default_group(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iio_sw_trigger_create(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @iio_trigger_types_lock) #5
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ @iio_trigger_types_list, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @iio_trigger_types_list
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -12
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %0) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %5, i32 -12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %5, i32 -8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call zeroext i1 @try_module_get(ptr noundef %17) #5
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %12, %3
  tail call void @mutex_unlock(ptr noundef nonnull @iio_trigger_types_lock) #5
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #6
  br label %31

21:                                               ; preds = %15
  tail call void @mutex_unlock(ptr noundef nonnull @iio_trigger_types_lock) #5
  %22 = getelementptr i8, ptr %5, i32 -4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr %24(ptr noundef %1) #5
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.iio_sw_trigger, ptr %25, i32 0, i32 1
  store ptr %13, ptr %28, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load ptr, ptr %16, align 4
  tail call void @module_put(ptr noundef %30) #5
  br label %31

31:                                               ; preds = %29, %27, %19
  %32 = phi ptr [ %25, %29 ], [ %25, %27 ], [ inttoptr (i32 -22 to ptr), %19 ]
  ret ptr %32
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_sw_trigger_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_sw_trigger, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iio_sw_trigger_ops, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #5
  %9 = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @module_put(ptr noundef %10) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iio_sw_trigger_init() #3 section ".init.text" {
  %1 = tail call ptr @configfs_register_default_group(ptr noundef nonnull @iio_configfs_subsys, ptr noundef nonnull @.str.2, ptr noundef nonnull @iio_triggers_group_type) #5
  store ptr %1, ptr @iio_triggers_group, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %1 to i32
  %4 = select i1 %2, i32 %3, i32 0
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @iio_sw_trigger_exit() #3 section ".exit.text" {
  %1 = load ptr, ptr @iio_triggers_group, align 4
  tail call void @configfs_unregister_default_group(ptr noundef %1) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @trigger_make_group(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call ptr @iio_sw_trigger_create(ptr noundef %3, ptr noundef %1)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.iio_sw_trigger, ptr %4, i32 0, i32 2
  %8 = tail call i32 (ptr, ptr, ...) @config_item_set_name(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef %1) #5
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %7, %6 ], [ %4, %2 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trigger_drop_group(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -8
  %4 = getelementptr i8, ptr %1, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iio_sw_trigger_ops, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %3) #5
  %11 = getelementptr inbounds %struct.iio_sw_trigger_type, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @module_put(ptr noundef %12) #5
  tail call void @config_item_put(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_item_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
