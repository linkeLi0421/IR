; ModuleID = '/llk/IR/drivers/base/transport_class.c_pt.bc'
source_filename = "../drivers/base/transport_class.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_transport_class_register:\09\09\09\09\09"
module asm "\09.asciz \09\22transport_class_register\22\09\09\09\09\09"
module asm "__kstrtabns_transport_class_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_transport_class_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22transport_class_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_transport_class_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_anon_transport_class_register:\09\09\09\09\09"
module asm "\09.asciz \09\22anon_transport_class_register\22\09\09\09\09\09"
module asm "__kstrtabns_anon_transport_class_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_anon_transport_class_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22anon_transport_class_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_anon_transport_class_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_transport_setup_device:\09\09\09\09\09"
module asm "\09.asciz \09\22transport_setup_device\22\09\09\09\09\09"
module asm "__kstrtabns_transport_setup_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_transport_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22transport_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_transport_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_transport_configure_device:\09\09\09\09\09"
module asm "\09.asciz \09\22transport_configure_device\22\09\09\09\09\09"
module asm "__kstrtabns_transport_configure_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_transport_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22transport_remove_device\22\09\09\09\09\09"
module asm "__kstrtabns_transport_remove_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_transport_destroy_device:\09\09\09\09\09"
module asm "\09.asciz \09\22transport_destroy_device\22\09\09\09\09\09"
module asm "__kstrtabns_transport_destroy_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon_transport_class = type { %struct.transport_class, %struct.attribute_container }
%struct.transport_class = type { %struct.class, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.transport_container = type { %struct.attribute_container, ptr }

@transport_class_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@__kstrtab_transport_class_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_transport_class_register = external dso_local constant [0 x i8], align 1
@__ksymtab_transport_class_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @transport_class_register to i32), ptr @__kstrtab_transport_class_register, ptr @__kstrtabns_transport_class_register }, section "___ksymtab_gpl+transport_class_register", align 4
@__kstrtab_transport_class_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_transport_class_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_transport_class_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @transport_class_unregister to i32), ptr @__kstrtab_transport_class_unregister, ptr @__kstrtabns_transport_class_unregister }, section "___ksymtab_gpl+transport_class_unregister", align 4
@__kstrtab_anon_transport_class_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_anon_transport_class_register = external dso_local constant [0 x i8], align 1
@__ksymtab_anon_transport_class_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @anon_transport_class_register to i32), ptr @__kstrtab_anon_transport_class_register, ptr @__kstrtabns_anon_transport_class_register }, section "___ksymtab_gpl+anon_transport_class_register", align 4
@__kstrtab_anon_transport_class_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_anon_transport_class_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_anon_transport_class_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @anon_transport_class_unregister to i32), ptr @__kstrtab_anon_transport_class_unregister, ptr @__kstrtabns_anon_transport_class_unregister }, section "___ksymtab_gpl+anon_transport_class_unregister", align 4
@__kstrtab_transport_setup_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_transport_setup_device = external dso_local constant [0 x i8], align 1
@__ksymtab_transport_setup_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @transport_setup_device to i32), ptr @__kstrtab_transport_setup_device, ptr @__kstrtabns_transport_setup_device }, section "___ksymtab_gpl+transport_setup_device", align 4
@__kstrtab_transport_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_transport_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_transport_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @transport_add_device to i32), ptr @__kstrtab_transport_add_device, ptr @__kstrtabns_transport_add_device }, section "___ksymtab_gpl+transport_add_device", align 4
@__kstrtab_transport_configure_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_transport_configure_device = external dso_local constant [0 x i8], align 1
@__ksymtab_transport_configure_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @transport_configure_device to i32), ptr @__kstrtab_transport_configure_device, ptr @__kstrtabns_transport_configure_device }, section "___ksymtab_gpl+transport_configure_device", align 4
@__kstrtab_transport_remove_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_transport_remove_device = external dso_local constant [0 x i8], align 1
@__ksymtab_transport_remove_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @transport_remove_device to i32), ptr @__kstrtab_transport_remove_device, ptr @__kstrtabns_transport_remove_device }, section "___ksymtab_gpl+transport_remove_device", align 4
@__kstrtab_transport_destroy_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_transport_destroy_device = external dso_local constant [0 x i8], align 1
@__ksymtab_transport_destroy_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @transport_destroy_device to i32), ptr @__kstrtab_transport_destroy_device, ptr @__kstrtabns_transport_destroy_device }, section "___ksymtab_gpl+transport_destroy_device", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_anon_transport_class_register, ptr @__ksymtab_anon_transport_class_unregister, ptr @__ksymtab_transport_add_device, ptr @__ksymtab_transport_class_register, ptr @__ksymtab_transport_class_unregister, ptr @__ksymtab_transport_configure_device, ptr @__ksymtab_transport_destroy_device, ptr @__ksymtab_transport_remove_device, ptr @__ksymtab_transport_setup_device], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @transport_class_register(ptr noundef %0) #0 {
  %2 = tail call i32 @__class_register(ptr noundef %0, ptr noundef nonnull @transport_class_register.__key) #3
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @transport_class_unregister(ptr noundef %0) #0 {
  tail call void @class_unregister(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @anon_transport_class_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon_transport_class, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.anon_transport_class, ptr %0, i32 0, i32 1, i32 2
  store ptr %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.anon_transport_class, ptr %0, i32 0, i32 1, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = tail call i32 @attribute_container_register(ptr noundef %2) #3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.transport_class, ptr %0, i32 0, i32 1
  store ptr @anon_transport_dummy_function, ptr %10, align 4
  %11 = getelementptr inbounds %struct.transport_class, ptr %0, i32 0, i32 3
  store ptr @anon_transport_dummy_function, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %1
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @anon_transport_dummy_function(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @anon_transport_class_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon_transport_class, ptr %0, i32 0, i32 1
  %3 = tail call i32 @attribute_container_unregister(ptr noundef %2) #3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/transport_class.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

6:                                                ; preds = %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @transport_setup_device(ptr noundef %0) #0 {
  tail call void @attribute_container_add_device(ptr noundef %0, ptr noundef nonnull @transport_setup_classdev) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @attribute_container_add_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @transport_setup_classdev(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.transport_class, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3
  br label %11

11:                                               ; preds = %9, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @transport_add_device(ptr noundef %0) #0 {
  %2 = tail call i32 @attribute_container_device_trigger_safe(ptr noundef %0, ptr noundef nonnull @transport_add_class_device, ptr noundef nonnull @transport_remove_classdev) #3
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_device_trigger_safe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @transport_add_class_device(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @attribute_container_add_class_device(ptr noundef %2) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.transport_container, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @sysfs_create_group(ptr noundef %2, ptr noundef nonnull %8) #3
  br label %12

12:                                               ; preds = %10, %6, %3
  %13 = phi i32 [ %4, %3 ], [ %11, %10 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @transport_remove_classdev(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.transport_class, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, @anon_transport_dummy_function
  br i1 %12, label %19, label %13

13:                                               ; preds = %9, %3
  %14 = getelementptr inbounds %struct.transport_container, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @sysfs_remove_group(ptr noundef %2, ptr noundef nonnull %15) #3
  br label %18

18:                                               ; preds = %17, %13
  tail call void @attribute_container_class_device_del(ptr noundef %2) #3
  br label %19

19:                                               ; preds = %18, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @transport_configure_device(ptr noundef %0) #0 {
  tail call void @attribute_container_device_trigger(ptr noundef %0, ptr noundef nonnull @transport_configure) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @attribute_container_device_trigger(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @transport_configure(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.transport_class, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3
  br label %11

11:                                               ; preds = %9, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @transport_remove_device(ptr noundef %0) #0 {
  tail call void @attribute_container_device_trigger(ptr noundef %0, ptr noundef nonnull @transport_remove_classdev) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @transport_destroy_device(ptr noundef %0) #0 {
  tail call void @attribute_container_remove_device(ptr noundef %0, ptr noundef nonnull @transport_destroy_classdev) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @attribute_container_remove_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @transport_destroy_classdev(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.attribute_container, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.transport_class, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @anon_transport_dummy_function
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @put_device(ptr noundef %2) #3
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_add_class_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @attribute_container_class_device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2151101409, i64 2151101904, i64 2151101446, i64 2151101502, i64 2151101536, i64 2151101560, i64 2151101601, i64 2151101622, i64 2151101650, i64 2151101684}
