; ModuleID = '/llk/IR/drivers/net/mdio/mdio-bitbang.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-bitbang.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdiobb_read:\09\09\09\09\09"
module asm "\09.asciz \09\22mdiobb_read\22\09\09\09\09\09"
module asm "__kstrtabns_mdiobb_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdiobb_write:\09\09\09\09\09"
module asm "\09.asciz \09\22mdiobb_write\22\09\09\09\09\09"
module asm "__kstrtabns_mdiobb_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_mdio_bitbang:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_mdio_bitbang\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_mdio_bitbang:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_mdio_bitbang:\09\09\09\09\09"
module asm "\09.asciz \09\22free_mdio_bitbang\22\09\09\09\09\09"
module asm "__kstrtabns_free_mdio_bitbang:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mdiobb_ctrl = type { ptr, i32, i8, i8 }
%struct.mdiobb_ops = type { ptr, ptr, ptr, ptr, ptr }

@__kstrtab_mdiobb_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdiobb_read = external dso_local constant [0 x i8], align 1
@__ksymtab_mdiobb_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdiobb_read to i32), ptr @__kstrtab_mdiobb_read, ptr @__kstrtabns_mdiobb_read }, section "___ksymtab+mdiobb_read", align 4
@__kstrtab_mdiobb_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdiobb_write = external dso_local constant [0 x i8], align 1
@__ksymtab_mdiobb_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdiobb_write to i32), ptr @__kstrtab_mdiobb_write, ptr @__kstrtabns_mdiobb_write }, section "___ksymtab+mdiobb_write", align 4
@__kstrtab_alloc_mdio_bitbang = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_mdio_bitbang = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_mdio_bitbang = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_mdio_bitbang to i32), ptr @__kstrtab_alloc_mdio_bitbang, ptr @__kstrtabns_alloc_mdio_bitbang }, section "___ksymtab+alloc_mdio_bitbang", align 4
@__kstrtab_free_mdio_bitbang = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_mdio_bitbang = external dso_local constant [0 x i8], align 1
@__ksymtab_free_mdio_bitbang = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_mdio_bitbang to i32), ptr @__kstrtab_free_mdio_bitbang, ptr @__kstrtabns_free_mdio_bitbang }, section "___ksymtab+free_mdio_bitbang", align 4
@__UNIQUE_ID_file273 = internal constant [48 x i8] c"mdio_bitbang.file=drivers/net/mdio/mdio-bitbang\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [28 x i8] c"mdio_bitbang.license=GPL v2\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__ksymtab_alloc_mdio_bitbang, ptr @__ksymtab_free_mdio_bitbang, ptr @__ksymtab_mdiobb_read, ptr @__ksymtab_mdiobb_write], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdiobb_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = and i32 %2, 1073741824
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @mdiobb_cmd_addr(ptr noundef %5, i32 noundef %1, i32 noundef %2)
  br label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mdiobb_ctrl, ptr %5, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %2, %10 ], [ %9, %8 ]
  %16 = phi i32 [ %13, %10 ], [ 32771, %8 ]
  %17 = trunc i32 %1 to i8
  %18 = trunc i32 %15 to i8
  tail call fastcc void @mdiobb_cmd(ptr noundef %5, i32 noundef %16, i8 noundef zeroext %17, i8 noundef zeroext %18)
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.mdiobb_ops, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %5, i32 noundef 0) #2
  %22 = load ptr, ptr %5, align 4
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #2
  %24 = getelementptr inbounds %struct.mdiobb_ops, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %5, i32 noundef 1) #2
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #2
  %27 = load ptr, ptr %24, align 4
  tail call void %27(ptr noundef %5, i32 noundef 0) #2
  %28 = getelementptr inbounds %struct.mdiobb_ops, ptr %22, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %5) #2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %33, %14
  br label %52

33:                                               ; preds = %14
  %34 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 14
  %35 = load i32, ptr %34, align 4
  %36 = shl nuw i32 1, %1
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %32

39:                                               ; preds = %39, %33
  %40 = phi i32 [ %50, %39 ], [ 0, %33 ]
  %41 = load ptr, ptr %5, align 4
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #2
  %43 = getelementptr inbounds %struct.mdiobb_ops, ptr %41, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %5, i32 noundef 1) #2
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #2
  %46 = load ptr, ptr %43, align 4
  tail call void %46(ptr noundef %5, i32 noundef 0) #2
  %47 = getelementptr inbounds %struct.mdiobb_ops, ptr %41, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %48(ptr noundef %5) #2
  %50 = add nuw nsw i32 %40, 1
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %80, label %39

52:                                               ; preds = %52, %32
  %53 = phi i16 [ %66, %52 ], [ 0, %32 ]
  %54 = phi i32 [ %67, %52 ], [ 15, %32 ]
  %55 = shl i16 %53, 1
  %56 = load ptr, ptr %5, align 4
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #2
  %58 = getelementptr inbounds %struct.mdiobb_ops, ptr %56, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void %59(ptr noundef %5, i32 noundef 1) #2
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748) #2
  %61 = load ptr, ptr %58, align 4
  tail call void %61(ptr noundef %5, i32 noundef 0) #2
  %62 = getelementptr inbounds %struct.mdiobb_ops, ptr %56, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef %5) #2
  %65 = trunc i32 %64 to i16
  %66 = or i16 %55, %65
  %67 = add nsw i32 %54, -1
  %68 = icmp eq i32 %54, 0
  br i1 %68, label %69, label %52

69:                                               ; preds = %52
  %70 = zext i16 %66 to i32
  %71 = load ptr, ptr %5, align 4
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748) #2
  %73 = getelementptr inbounds %struct.mdiobb_ops, ptr %71, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef %5, i32 noundef 1) #2
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748) #2
  %76 = load ptr, ptr %73, align 4
  tail call void %76(ptr noundef %5, i32 noundef 0) #2
  %77 = getelementptr inbounds %struct.mdiobb_ops, ptr %71, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 %78(ptr noundef %5) #2
  br label %80

80:                                               ; preds = %69, %39
  %81 = phi i32 [ %70, %69 ], [ 65535, %39 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mdiobb_cmd_addr(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = lshr i32 %2, 16
  %5 = and i32 %4, 31
  %6 = trunc i32 %1 to i8
  %7 = trunc i32 %5 to i8
  tail call fastcc void @mdiobb_cmd(ptr noundef %0, i32 noundef 32768, i8 noundef zeroext %6, i8 noundef zeroext %7)
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.mdiobb_ops, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %0, i32 noundef 1) #2
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #2
  %12 = getelementptr inbounds %struct.mdiobb_ops, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0, i32 noundef 1) #2
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #2
  %15 = load ptr, ptr %12, align 4
  tail call void %15(ptr noundef %0, i32 noundef 0) #2
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.mdiobb_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %0, i32 noundef 0) #2
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #2
  %20 = getelementptr inbounds %struct.mdiobb_ops, ptr %16, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %0, i32 noundef 1) #2
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #2
  %23 = load ptr, ptr %20, align 4
  tail call void %23(ptr noundef %0, i32 noundef 0) #2
  %24 = and i32 %2, 65535
  br label %25

25:                                               ; preds = %25, %3
  %26 = phi i32 [ 15, %3 ], [ %37, %25 ]
  %27 = lshr i32 %24, %26
  %28 = and i32 %27, 1
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.mdiobb_ops, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0, i32 noundef %28) #2
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #2
  %33 = getelementptr inbounds %struct.mdiobb_ops, ptr %29, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %0, i32 noundef 1) #2
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #2
  %36 = load ptr, ptr %33, align 4
  tail call void %36(ptr noundef %0, i32 noundef 0) #2
  %37 = add nsw i32 %26, -1
  %38 = icmp eq i32 %26, 0
  br i1 %38, label %39, label %25

39:                                               ; preds = %25
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.mdiobb_ops, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %0, i32 noundef 0) #2
  %43 = load ptr, ptr %0, align 4
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #2
  %45 = getelementptr inbounds %struct.mdiobb_ops, ptr %43, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %0, i32 noundef 1) #2
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #2
  %48 = load ptr, ptr %45, align 4
  tail call void %48(ptr noundef %0, i32 noundef 0) #2
  %49 = getelementptr inbounds %struct.mdiobb_ops, ptr %43, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %0) #2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mdiobb_cmd(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.mdiobb_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0, i32 noundef 1) #2
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi i32 [ 0, %4 ], [ %18, %8 ]
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.mdiobb_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0, i32 noundef 1) #2
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #2
  %14 = getelementptr inbounds %struct.mdiobb_ops, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0, i32 noundef 1) #2
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #2
  %17 = load ptr, ptr %14, align 4
  tail call void %17(ptr noundef %0, i32 noundef 0) #2
  %18 = add nuw nsw i32 %9, 1
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %20, label %8

20:                                               ; preds = %8
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.mdiobb_ops, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %0, i32 noundef 0) #2
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #2
  %25 = getelementptr inbounds %struct.mdiobb_ops, ptr %21, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef %0, i32 noundef 1) #2
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #2
  %28 = load ptr, ptr %25, align 4
  tail call void %28(ptr noundef %0, i32 noundef 0) #2
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.mdiobb_ops, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = lshr i32 %1, 15
  %33 = and i32 %32, 1
  %34 = xor i32 %33, 1
  tail call void %31(ptr noundef %0, i32 noundef %34) #2
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #2
  %36 = getelementptr inbounds %struct.mdiobb_ops, ptr %29, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %0, i32 noundef 1) #2
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #2
  %39 = load ptr, ptr %36, align 4
  tail call void %39(ptr noundef %0, i32 noundef 0) #2
  %40 = lshr i32 %1, 1
  %41 = and i32 %40, 1
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.mdiobb_ops, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %0, i32 noundef %41) #2
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #2
  %46 = getelementptr inbounds %struct.mdiobb_ops, ptr %42, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %0, i32 noundef 1) #2
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #2
  %49 = load ptr, ptr %46, align 4
  tail call void %49(ptr noundef %0, i32 noundef 0) #2
  %50 = and i32 %1, 1
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.mdiobb_ops, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %0, i32 noundef %50) #2
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #2
  %55 = getelementptr inbounds %struct.mdiobb_ops, ptr %51, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %0, i32 noundef 1) #2
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #2
  %58 = load ptr, ptr %55, align 4
  tail call void %58(ptr noundef %0, i32 noundef 0) #2
  %59 = zext i8 %2 to i32
  %60 = lshr i32 %59, 4
  %61 = and i32 %60, 1
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.mdiobb_ops, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  tail call void %64(ptr noundef %0, i32 noundef %61) #2
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748) #2
  %66 = getelementptr inbounds %struct.mdiobb_ops, ptr %62, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void %67(ptr noundef %0, i32 noundef 1) #2
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748) #2
  %69 = load ptr, ptr %66, align 4
  tail call void %69(ptr noundef %0, i32 noundef 0) #2
  %70 = lshr i32 %59, 3
  %71 = and i32 %70, 1
  %72 = load ptr, ptr %0, align 4
  %73 = getelementptr inbounds %struct.mdiobb_ops, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef %0, i32 noundef %71) #2
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748) #2
  %76 = getelementptr inbounds %struct.mdiobb_ops, ptr %72, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %0, i32 noundef 1) #2
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #2
  %79 = load ptr, ptr %76, align 4
  tail call void %79(ptr noundef %0, i32 noundef 0) #2
  %80 = lshr i32 %59, 2
  %81 = and i32 %80, 1
  %82 = load ptr, ptr %0, align 4
  %83 = getelementptr inbounds %struct.mdiobb_ops, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  tail call void %84(ptr noundef %0, i32 noundef %81) #2
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %85(i32 noundef 214748) #2
  %86 = getelementptr inbounds %struct.mdiobb_ops, ptr %82, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  tail call void %87(ptr noundef %0, i32 noundef 1) #2
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748) #2
  %89 = load ptr, ptr %86, align 4
  tail call void %89(ptr noundef %0, i32 noundef 0) #2
  %90 = lshr i32 %59, 1
  %91 = and i32 %90, 1
  %92 = load ptr, ptr %0, align 4
  %93 = getelementptr inbounds %struct.mdiobb_ops, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef %0, i32 noundef %91) #2
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748) #2
  %96 = getelementptr inbounds %struct.mdiobb_ops, ptr %92, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  tail call void %97(ptr noundef %0, i32 noundef 1) #2
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748) #2
  %99 = load ptr, ptr %96, align 4
  tail call void %99(ptr noundef %0, i32 noundef 0) #2
  %100 = and i32 %59, 1
  %101 = load ptr, ptr %0, align 4
  %102 = getelementptr inbounds %struct.mdiobb_ops, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  tail call void %103(ptr noundef %0, i32 noundef %100) #2
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748) #2
  %105 = getelementptr inbounds %struct.mdiobb_ops, ptr %101, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  tail call void %106(ptr noundef %0, i32 noundef 1) #2
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748) #2
  %108 = load ptr, ptr %105, align 4
  tail call void %108(ptr noundef %0, i32 noundef 0) #2
  %109 = zext i8 %3 to i32
  %110 = lshr i32 %109, 4
  %111 = and i32 %110, 1
  %112 = load ptr, ptr %0, align 4
  %113 = getelementptr inbounds %struct.mdiobb_ops, ptr %112, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  tail call void %114(ptr noundef %0, i32 noundef %111) #2
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %115(i32 noundef 214748) #2
  %116 = getelementptr inbounds %struct.mdiobb_ops, ptr %112, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  tail call void %117(ptr noundef %0, i32 noundef 1) #2
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %118(i32 noundef 214748) #2
  %119 = load ptr, ptr %116, align 4
  tail call void %119(ptr noundef %0, i32 noundef 0) #2
  %120 = lshr i32 %109, 3
  %121 = and i32 %120, 1
  %122 = load ptr, ptr %0, align 4
  %123 = getelementptr inbounds %struct.mdiobb_ops, ptr %122, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  tail call void %124(ptr noundef %0, i32 noundef %121) #2
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 214748) #2
  %126 = getelementptr inbounds %struct.mdiobb_ops, ptr %122, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  tail call void %127(ptr noundef %0, i32 noundef 1) #2
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748) #2
  %129 = load ptr, ptr %126, align 4
  tail call void %129(ptr noundef %0, i32 noundef 0) #2
  %130 = lshr i32 %109, 2
  %131 = and i32 %130, 1
  %132 = load ptr, ptr %0, align 4
  %133 = getelementptr inbounds %struct.mdiobb_ops, ptr %132, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  tail call void %134(ptr noundef %0, i32 noundef %131) #2
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748) #2
  %136 = getelementptr inbounds %struct.mdiobb_ops, ptr %132, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  tail call void %137(ptr noundef %0, i32 noundef 1) #2
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 214748) #2
  %139 = load ptr, ptr %136, align 4
  tail call void %139(ptr noundef %0, i32 noundef 0) #2
  %140 = lshr i32 %109, 1
  %141 = and i32 %140, 1
  %142 = load ptr, ptr %0, align 4
  %143 = getelementptr inbounds %struct.mdiobb_ops, ptr %142, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  tail call void %144(ptr noundef %0, i32 noundef %141) #2
  %145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %145(i32 noundef 214748) #2
  %146 = getelementptr inbounds %struct.mdiobb_ops, ptr %142, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  tail call void %147(ptr noundef %0, i32 noundef 1) #2
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748) #2
  %149 = load ptr, ptr %146, align 4
  tail call void %149(ptr noundef %0, i32 noundef 0) #2
  %150 = and i32 %109, 1
  %151 = load ptr, ptr %0, align 4
  %152 = getelementptr inbounds %struct.mdiobb_ops, ptr %151, i32 0, i32 3
  %153 = load ptr, ptr %152, align 4
  tail call void %153(ptr noundef %0, i32 noundef %150) #2
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 214748) #2
  %155 = getelementptr inbounds %struct.mdiobb_ops, ptr %151, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  tail call void %156(ptr noundef %0, i32 noundef 1) #2
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %157(i32 noundef 214748) #2
  %158 = load ptr, ptr %155, align 4
  tail call void %158(ptr noundef %0, i32 noundef 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdiobb_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = and i32 %2, 1073741824
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @mdiobb_cmd_addr(ptr noundef %6, i32 noundef %1, i32 noundef %2)
  br label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.mdiobb_ctrl, ptr %6, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i32 [ %2, %11 ], [ %10, %9 ]
  %17 = phi i32 [ %14, %11 ], [ 32769, %9 ]
  %18 = trunc i32 %1 to i8
  %19 = trunc i32 %16 to i8
  tail call fastcc void @mdiobb_cmd(ptr noundef %6, i32 noundef %17, i8 noundef zeroext %18, i8 noundef zeroext %19)
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.mdiobb_ops, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %6, i32 noundef 1) #2
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #2
  %24 = getelementptr inbounds %struct.mdiobb_ops, ptr %20, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %6, i32 noundef 1) #2
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #2
  %27 = load ptr, ptr %24, align 4
  tail call void %27(ptr noundef %6, i32 noundef 0) #2
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr inbounds %struct.mdiobb_ops, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %6, i32 noundef 0) #2
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #2
  %32 = getelementptr inbounds %struct.mdiobb_ops, ptr %28, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %6, i32 noundef 1) #2
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #2
  %35 = load ptr, ptr %32, align 4
  tail call void %35(ptr noundef %6, i32 noundef 0) #2
  %36 = zext i16 %3 to i32
  br label %37

37:                                               ; preds = %37, %15
  %38 = phi i32 [ 15, %15 ], [ %49, %37 ]
  %39 = lshr i32 %36, %38
  %40 = and i32 %39, 1
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr inbounds %struct.mdiobb_ops, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %6, i32 noundef %40) #2
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #2
  %45 = getelementptr inbounds %struct.mdiobb_ops, ptr %41, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %6, i32 noundef 1) #2
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #2
  %48 = load ptr, ptr %45, align 4
  tail call void %48(ptr noundef %6, i32 noundef 0) #2
  %49 = add nsw i32 %38, -1
  %50 = icmp eq i32 %38, 0
  br i1 %50, label %51, label %37

51:                                               ; preds = %37
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr inbounds %struct.mdiobb_ops, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %6, i32 noundef 0) #2
  %55 = load ptr, ptr %6, align 4
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #2
  %57 = getelementptr inbounds %struct.mdiobb_ops, ptr %55, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void %58(ptr noundef %6, i32 noundef 1) #2
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #2
  %60 = load ptr, ptr %57, align 4
  tail call void %60(ptr noundef %6, i32 noundef 0) #2
  %61 = getelementptr inbounds %struct.mdiobb_ops, ptr %55, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef %6) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_mdio_bitbang(ptr noundef %0) #0 {
  %2 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 4
  tail call void @__module_get(ptr noundef %6) #2
  %7 = getelementptr inbounds %struct.mii_bus, ptr %2, i32 0, i32 4
  store ptr @mdiobb_read, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mii_bus, ptr %2, i32 0, i32 5
  store ptr @mdiobb_write, ptr %8, align 8
  %9 = getelementptr inbounds %struct.mii_bus, ptr %2, i32 0, i32 3
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.mdiobb_ctrl, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.mdiobb_ctrl, ptr %0, i32 0, i32 2
  store i8 2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mdiobb_ctrl, ptr %0, i32 0, i32 3
  store i8 1, ptr %15, align 1
  br label %16

16:                                               ; preds = %13, %4, %1
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_mdio_bitbang(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  tail call void @module_put(ptr noundef %5) #2
  tail call void @mdiobus_free(ptr noundef %0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
