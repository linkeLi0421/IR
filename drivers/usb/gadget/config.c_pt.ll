; ModuleID = '/llk/IR/drivers/usb/gadget/config.c_pt.bc'
source_filename = "../drivers/usb/gadget/config.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_descriptor_fillbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_descriptor_fillbuf\22\09\09\09\09\09"
module asm "__kstrtabns_usb_descriptor_fillbuf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gadget_config_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gadget_config_buf\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gadget_config_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_copy_descriptors:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_copy_descriptors\22\09\09\09\09\09"
module asm "__kstrtabns_usb_copy_descriptors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_assign_descriptors:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_assign_descriptors\22\09\09\09\09\09"
module asm "__kstrtabns_usb_assign_descriptors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_free_all_descriptors:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_free_all_descriptors\22\09\09\09\09\09"
module asm "__kstrtabns_usb_free_all_descriptors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_otg_descriptor_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_otg_descriptor_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_usb_otg_descriptor_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_otg_descriptor_init:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_otg_descriptor_init\22\09\09\09\09\09"
module asm "__kstrtabns_usb_otg_descriptor_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.usb_otg20_descriptor = type <{ i8, i8, i8, i16 }>
%struct.usb_otg_descriptor = type { i8, i8, i8 }

@__kstrtab_usb_descriptor_fillbuf = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_descriptor_fillbuf = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_descriptor_fillbuf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_descriptor_fillbuf to i32), ptr @__kstrtab_usb_descriptor_fillbuf, ptr @__kstrtabns_usb_descriptor_fillbuf }, section "___ksymtab_gpl+usb_descriptor_fillbuf", align 4
@__kstrtab_usb_gadget_config_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gadget_config_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gadget_config_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gadget_config_buf to i32), ptr @__kstrtab_usb_gadget_config_buf, ptr @__kstrtabns_usb_gadget_config_buf }, section "___ksymtab_gpl+usb_gadget_config_buf", align 4
@__kstrtab_usb_copy_descriptors = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_copy_descriptors = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_copy_descriptors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_copy_descriptors to i32), ptr @__kstrtab_usb_copy_descriptors, ptr @__kstrtabns_usb_copy_descriptors }, section "___ksymtab_gpl+usb_copy_descriptors", align 4
@__kstrtab_usb_assign_descriptors = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_assign_descriptors = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_assign_descriptors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_assign_descriptors to i32), ptr @__kstrtab_usb_assign_descriptors, ptr @__kstrtabns_usb_assign_descriptors }, section "___ksymtab_gpl+usb_assign_descriptors", align 4
@__kstrtab_usb_free_all_descriptors = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_free_all_descriptors = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_free_all_descriptors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_free_all_descriptors to i32), ptr @__kstrtab_usb_free_all_descriptors, ptr @__kstrtabns_usb_free_all_descriptors }, section "___ksymtab_gpl+usb_free_all_descriptors", align 4
@__kstrtab_usb_otg_descriptor_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_otg_descriptor_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_otg_descriptor_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_otg_descriptor_alloc to i32), ptr @__kstrtab_usb_otg_descriptor_alloc, ptr @__kstrtabns_usb_otg_descriptor_alloc }, section "___ksymtab_gpl+usb_otg_descriptor_alloc", align 4
@__kstrtab_usb_otg_descriptor_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_otg_descriptor_init = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_otg_descriptor_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_otg_descriptor_init to i32), ptr @__kstrtab_usb_otg_descriptor_init, ptr @__kstrtabns_usb_otg_descriptor_init }, section "___ksymtab_gpl+usb_otg_descriptor_init", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_usb_assign_descriptors, ptr @__ksymtab_usb_copy_descriptors, ptr @__ksymtab_usb_descriptor_fillbuf, ptr @__ksymtab_usb_free_all_descriptors, ptr @__ksymtab_usb_gadget_config_buf, ptr @__ksymtab_usb_otg_descriptor_alloc, ptr @__ksymtab_usb_otg_descriptor_init], section "llvm.metadata"

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_descriptor_fillbuf(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %16, %5
  %9 = phi ptr [ %20, %16 ], [ %6, %5 ]
  %10 = phi ptr [ %18, %16 ], [ %0, %5 ]
  %11 = phi ptr [ %19, %16 ], [ %2, %5 ]
  %12 = phi i32 [ %17, %16 ], [ %1, %5 ]
  %13 = load i8, ptr %9, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %10, ptr nonnull align 1 %9, i32 %14, i1 false)
  %17 = sub i32 %12, %14
  %18 = getelementptr i8, ptr %10, i32 %14
  %19 = getelementptr ptr, ptr %11, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8

22:                                               ; preds = %16, %5
  %23 = phi ptr [ %0, %5 ], [ %18, %16 ]
  %24 = ptrtoint ptr %23 to i32
  %25 = ptrtoint ptr %0 to i32
  %26 = sub i32 %24, %25
  br label %27

27:                                               ; preds = %22, %8, %3
  %28 = phi i32 [ %26, %22 ], [ -22, %3 ], [ -22, %8 ]
  ret i32 %28
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_gadget_config_buf(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3) #0 {
  %5 = icmp ugt i32 %2, 8
  %6 = icmp ne ptr %3, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %44

8:                                                ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %1, ptr noundef align 1 dereferenceable(9) %0, i32 9, i1 false)
  %9 = getelementptr i8, ptr %1, i32 9
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = add i32 %2, -9
  br label %14

14:                                               ; preds = %22, %12
  %15 = phi ptr [ %26, %22 ], [ %10, %12 ]
  %16 = phi ptr [ %24, %22 ], [ %9, %12 ]
  %17 = phi ptr [ %25, %22 ], [ %3, %12 ]
  %18 = phi i32 [ %23, %22 ], [ %13, %12 ]
  %19 = load i8, ptr %15, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %44, label %22

22:                                               ; preds = %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr nonnull align 1 %15, i32 %20, i1 false) #6
  %23 = sub i32 %18, %20
  %24 = getelementptr i8, ptr %16, i32 %20
  %25 = getelementptr ptr, ptr %17, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14

28:                                               ; preds = %22, %8
  %29 = phi ptr [ %9, %8 ], [ %24, %22 ]
  %30 = ptrtoint ptr %29 to i32
  %31 = ptrtoint ptr %9 to i32
  %32 = sub i32 %30, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = add nuw i32 %32, 9
  %36 = icmp sgt i32 %35, 65535
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  store i8 9, ptr %1, align 1
  %38 = getelementptr inbounds %struct.usb_config_descriptor, ptr %1, i32 0, i32 1
  store i8 2, ptr %38, align 1
  %39 = trunc i32 %35 to i16
  %40 = getelementptr inbounds %struct.usb_config_descriptor, ptr %1, i32 0, i32 2
  store i16 %39, ptr %40, align 1
  %41 = getelementptr inbounds %struct.usb_config_descriptor, ptr %1, i32 0, i32 6
  %42 = load i8, ptr %41, align 1
  %43 = or i8 %42, -128
  store i8 %43, ptr %41, align 1
  br label %44

44:                                               ; preds = %37, %34, %28, %14, %4
  %45 = phi i32 [ %35, %37 ], [ -22, %4 ], [ %32, %28 ], [ -22, %34 ], [ -22, %14 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_copy_descriptors(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %14, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %13, %4 ], [ 1, %1 ]
  %7 = phi i32 [ %11, %4 ], [ 0, %1 ]
  %8 = phi ptr [ %12, %4 ], [ %0, %1 ]
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i32
  %11 = add i32 %7, %10
  %12 = getelementptr ptr, ptr %8, i32 1
  %13 = add i32 %6, 1
  %14 = load ptr, ptr %12, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4

16:                                               ; preds = %4
  %17 = shl i32 %13, 2
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i32 [ 0, %1 ], [ %11, %16 ]
  %20 = phi i32 [ 4, %1 ], [ %17, %16 ]
  %21 = add i32 %20, %19
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %0, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %22, i32 %20
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi ptr [ %42, %29 ], [ %25, %27 ]
  %31 = phi ptr [ %40, %29 ], [ %28, %27 ]
  %32 = phi ptr [ %36, %29 ], [ %22, %27 ]
  %33 = phi ptr [ %41, %29 ], [ %0, %27 ]
  %34 = load i8, ptr %30, align 1
  %35 = zext i8 %34 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %31, ptr nonnull align 1 %30, i32 %35, i1 false)
  store ptr %31, ptr %32, align 4
  %36 = getelementptr ptr, ptr %32, i32 1
  %37 = load ptr, ptr %33, align 4
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %31, i32 %39
  %41 = getelementptr ptr, ptr %33, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %29

44:                                               ; preds = %29, %24
  %45 = phi ptr [ %22, %24 ], [ %36, %29 ]
  store ptr null, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %18
  %47 = phi ptr [ %22, %44 ], [ null, %18 ]
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_assign_descriptors(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef readonly %4) #2 {
  %6 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_configuration, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %4, null
  %12 = select i1 %11, ptr %3, ptr %4
  %13 = icmp eq ptr %1, null
  br i1 %13, label %62, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %27, %17 ], [ %15, %14 ]
  %19 = phi i32 [ %26, %17 ], [ 1, %14 ]
  %20 = phi i32 [ %24, %17 ], [ 0, %14 ]
  %21 = phi ptr [ %25, %17 ], [ %1, %14 ]
  %22 = load i8, ptr %18, align 1
  %23 = zext i8 %22 to i32
  %24 = add i32 %20, %23
  %25 = getelementptr ptr, ptr %21, i32 1
  %26 = add i32 %19, 1
  %27 = load ptr, ptr %25, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %17

29:                                               ; preds = %17
  %30 = shl i32 %26, 2
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi i32 [ 0, %14 ], [ %24, %29 ]
  %33 = phi i32 [ 4, %14 ], [ %30, %29 ]
  %34 = add i32 %33, %32
  %35 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %34, i32 noundef 3264) #7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 2
  br label %224

39:                                               ; preds = %31
  %40 = load ptr, ptr %1, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  %43 = getelementptr i8, ptr %35, i32 %33
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi ptr [ %57, %44 ], [ %40, %42 ]
  %46 = phi ptr [ %55, %44 ], [ %43, %42 ]
  %47 = phi ptr [ %51, %44 ], [ %35, %42 ]
  %48 = phi ptr [ %56, %44 ], [ %1, %42 ]
  %49 = load i8, ptr %45, align 1
  %50 = zext i8 %49 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %46, ptr nonnull align 1 %45, i32 %50, i1 false) #6
  store ptr %46, ptr %47, align 4
  %51 = getelementptr ptr, ptr %47, i32 1
  %52 = load ptr, ptr %48, align 4
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr i8, ptr %46, i32 %54
  %56 = getelementptr ptr, ptr %48, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %44

59:                                               ; preds = %44, %39
  %60 = phi ptr [ %35, %39 ], [ %51, %44 ]
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 2
  store ptr %35, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %5
  %63 = icmp eq ptr %2, null
  br i1 %63, label %116, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 6
  %66 = load i32, ptr %65, align 8
  %67 = icmp ult i32 %66, 3
  br i1 %67, label %116, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %2, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %85, label %71

71:                                               ; preds = %71, %68
  %72 = phi ptr [ %81, %71 ], [ %69, %68 ]
  %73 = phi i32 [ %80, %71 ], [ 1, %68 ]
  %74 = phi i32 [ %78, %71 ], [ 0, %68 ]
  %75 = phi ptr [ %79, %71 ], [ %2, %68 ]
  %76 = load i8, ptr %72, align 1
  %77 = zext i8 %76 to i32
  %78 = add i32 %74, %77
  %79 = getelementptr ptr, ptr %75, i32 1
  %80 = add i32 %73, 1
  %81 = load ptr, ptr %79, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %71

83:                                               ; preds = %71
  %84 = shl i32 %80, 2
  br label %85

85:                                               ; preds = %83, %68
  %86 = phi i32 [ 0, %68 ], [ %78, %83 ]
  %87 = phi i32 [ 4, %68 ], [ %84, %83 ]
  %88 = add i32 %87, %86
  %89 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %88, i32 noundef 3264) #7
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 3
  br label %224

93:                                               ; preds = %85
  %94 = load ptr, ptr %2, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %113, label %96

96:                                               ; preds = %93
  %97 = getelementptr i8, ptr %89, i32 %87
  br label %98

98:                                               ; preds = %98, %96
  %99 = phi ptr [ %111, %98 ], [ %94, %96 ]
  %100 = phi ptr [ %109, %98 ], [ %97, %96 ]
  %101 = phi ptr [ %105, %98 ], [ %89, %96 ]
  %102 = phi ptr [ %110, %98 ], [ %2, %96 ]
  %103 = load i8, ptr %99, align 1
  %104 = zext i8 %103 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %100, ptr nonnull align 1 %99, i32 %104, i1 false) #6
  store ptr %100, ptr %101, align 4
  %105 = getelementptr ptr, ptr %101, i32 1
  %106 = load ptr, ptr %102, align 4
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = getelementptr i8, ptr %100, i32 %108
  %110 = getelementptr ptr, ptr %102, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %98

113:                                              ; preds = %98, %93
  %114 = phi ptr [ %89, %93 ], [ %105, %98 ]
  store ptr null, ptr %114, align 4
  %115 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 3
  store ptr %89, ptr %115, align 4
  br label %116

116:                                              ; preds = %113, %64, %62
  %117 = icmp eq ptr %3, null
  br i1 %117, label %170, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 6
  %120 = load i32, ptr %119, align 8
  %121 = icmp ult i32 %120, 5
  br i1 %121, label %170, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %3, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %139, label %125

125:                                              ; preds = %125, %122
  %126 = phi ptr [ %135, %125 ], [ %123, %122 ]
  %127 = phi i32 [ %134, %125 ], [ 1, %122 ]
  %128 = phi i32 [ %132, %125 ], [ 0, %122 ]
  %129 = phi ptr [ %133, %125 ], [ %3, %122 ]
  %130 = load i8, ptr %126, align 1
  %131 = zext i8 %130 to i32
  %132 = add i32 %128, %131
  %133 = getelementptr ptr, ptr %129, i32 1
  %134 = add i32 %127, 1
  %135 = load ptr, ptr %133, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %125

137:                                              ; preds = %125
  %138 = shl i32 %134, 2
  br label %139

139:                                              ; preds = %137, %122
  %140 = phi i32 [ 0, %122 ], [ %132, %137 ]
  %141 = phi i32 [ 4, %122 ], [ %138, %137 ]
  %142 = add i32 %141, %140
  %143 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %142, i32 noundef 3264) #7
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 4
  br label %224

147:                                              ; preds = %139
  %148 = load ptr, ptr %3, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %167, label %150

150:                                              ; preds = %147
  %151 = getelementptr i8, ptr %143, i32 %141
  br label %152

152:                                              ; preds = %152, %150
  %153 = phi ptr [ %165, %152 ], [ %148, %150 ]
  %154 = phi ptr [ %163, %152 ], [ %151, %150 ]
  %155 = phi ptr [ %159, %152 ], [ %143, %150 ]
  %156 = phi ptr [ %164, %152 ], [ %3, %150 ]
  %157 = load i8, ptr %153, align 1
  %158 = zext i8 %157 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %154, ptr nonnull align 1 %153, i32 %158, i1 false) #6
  store ptr %154, ptr %155, align 4
  %159 = getelementptr ptr, ptr %155, i32 1
  %160 = load ptr, ptr %156, align 4
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = getelementptr i8, ptr %154, i32 %162
  %164 = getelementptr ptr, ptr %156, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %152

167:                                              ; preds = %152, %147
  %168 = phi ptr [ %143, %147 ], [ %159, %152 ]
  store ptr null, ptr %168, align 4
  %169 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 4
  store ptr %143, ptr %169, align 4
  br label %170

170:                                              ; preds = %167, %118, %116
  %171 = icmp eq ptr %12, null
  br i1 %171, label %234, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 6
  %174 = load i32, ptr %173, align 8
  %175 = icmp ult i32 %174, 6
  br i1 %175, label %234, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %12, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %193, label %179

179:                                              ; preds = %179, %176
  %180 = phi ptr [ %189, %179 ], [ %177, %176 ]
  %181 = phi i32 [ %188, %179 ], [ 1, %176 ]
  %182 = phi i32 [ %186, %179 ], [ 0, %176 ]
  %183 = phi ptr [ %187, %179 ], [ %12, %176 ]
  %184 = load i8, ptr %180, align 1
  %185 = zext i8 %184 to i32
  %186 = add i32 %182, %185
  %187 = getelementptr ptr, ptr %183, i32 1
  %188 = add i32 %181, 1
  %189 = load ptr, ptr %187, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %179

191:                                              ; preds = %179
  %192 = shl i32 %188, 2
  br label %193

193:                                              ; preds = %191, %176
  %194 = phi i32 [ 0, %176 ], [ %186, %191 ]
  %195 = phi i32 [ 4, %176 ], [ %192, %191 ]
  %196 = add i32 %195, %194
  %197 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %196, i32 noundef 3264) #7
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 5
  br label %224

201:                                              ; preds = %193
  %202 = load ptr, ptr %12, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %221, label %204

204:                                              ; preds = %201
  %205 = getelementptr i8, ptr %197, i32 %195
  br label %206

206:                                              ; preds = %206, %204
  %207 = phi ptr [ %219, %206 ], [ %202, %204 ]
  %208 = phi ptr [ %217, %206 ], [ %205, %204 ]
  %209 = phi ptr [ %213, %206 ], [ %197, %204 ]
  %210 = phi ptr [ %218, %206 ], [ %12, %204 ]
  %211 = load i8, ptr %207, align 1
  %212 = zext i8 %211 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %208, ptr nonnull align 1 %207, i32 %212, i1 false) #6
  store ptr %208, ptr %209, align 4
  %213 = getelementptr ptr, ptr %209, i32 1
  %214 = load ptr, ptr %210, align 4
  %215 = load i8, ptr %214, align 1
  %216 = zext i8 %215 to i32
  %217 = getelementptr i8, ptr %208, i32 %216
  %218 = getelementptr ptr, ptr %210, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %206

221:                                              ; preds = %206, %201
  %222 = phi ptr [ %197, %201 ], [ %213, %206 ]
  store ptr null, ptr %222, align 4
  %223 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 5
  store ptr %197, ptr %223, align 4
  br label %234

224:                                              ; preds = %199, %145, %91, %37
  %225 = phi ptr [ %200, %199 ], [ %146, %145 ], [ %92, %91 ], [ %38, %37 ]
  store ptr null, ptr %225, align 4
  %226 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 2
  %227 = load ptr, ptr %226, align 4
  tail call void @kfree(ptr noundef %227) #6
  store ptr null, ptr %226, align 4
  %228 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 3
  %229 = load ptr, ptr %228, align 4
  tail call void @kfree(ptr noundef %229) #6
  store ptr null, ptr %228, align 4
  %230 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 4
  %231 = load ptr, ptr %230, align 4
  tail call void @kfree(ptr noundef %231) #6
  store ptr null, ptr %230, align 4
  %232 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 5
  %233 = load ptr, ptr %232, align 4
  tail call void @kfree(ptr noundef %233) #6
  store ptr null, ptr %232, align 4
  br label %234

234:                                              ; preds = %224, %221, %172, %170
  %235 = phi i32 [ -12, %224 ], [ 0, %221 ], [ 0, %172 ], [ 0, %170 ]
  ret i32 %235
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_free_all_descriptors(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #6
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #6
  store ptr null, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #6
  store ptr null, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #6
  store ptr null, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @usb_otg_descriptor_alloc(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr %3, align 2
  %7 = icmp ugt i16 %6, 511
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %1
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ 3, %8 ], [ 5, %5 ]
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #7
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_otg_descriptor_init(ptr nocapture noundef readonly %0, ptr noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %6
  %9 = load i16, ptr %4, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.usb_otg_caps, ptr %4, i32 0, i32 1
  %13 = load i8, ptr %12, align 2, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i8 0, i8 2
  %16 = getelementptr inbounds %struct.usb_otg_caps, ptr %4, i32 0, i32 2
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = or i8 %15, %17
  %19 = getelementptr inbounds %struct.usb_otg_caps, ptr %4, i32 0, i32 3
  %20 = load i8, ptr %19, align 2, !range !8
  %21 = icmp eq i8 %20, 0
  %22 = icmp ugt i16 %9, 511
  %23 = or i8 %18, 4
  %24 = select i1 %22, i8 %23, i8 %18
  %25 = select i1 %21, i8 %18, i8 %24
  br i1 %22, label %26, label %31

26:                                               ; preds = %11
  store i8 5, ptr %1, align 1
  %27 = getelementptr inbounds %struct.usb_otg20_descriptor, ptr %1, i32 0, i32 1
  store i8 9, ptr %27, align 1
  %28 = getelementptr inbounds %struct.usb_otg20_descriptor, ptr %1, i32 0, i32 2
  store i8 %25, ptr %28, align 1
  %29 = load i16, ptr %4, align 2
  %30 = getelementptr inbounds %struct.usb_otg20_descriptor, ptr %1, i32 0, i32 3
  store i16 %29, ptr %30, align 1
  br label %35

31:                                               ; preds = %11, %8, %6
  %32 = phi i8 [ %25, %11 ], [ 3, %6 ], [ 3, %8 ]
  store i8 3, ptr %1, align 1
  %33 = getelementptr inbounds %struct.usb_otg_descriptor, ptr %1, i32 0, i32 1
  store i8 9, ptr %33, align 1
  %34 = getelementptr inbounds %struct.usb_otg_descriptor, ptr %1, i32 0, i32 2
  store i8 %32, ptr %34, align 1
  br label %35

35:                                               ; preds = %31, %26, %2
  %36 = phi i32 [ -22, %2 ], [ 0, %31 ], [ 0, %26 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!8 = !{i8 0, i8 2}
