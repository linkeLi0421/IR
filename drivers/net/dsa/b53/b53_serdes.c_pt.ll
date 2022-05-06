; ModuleID = '/llk/IR/drivers/net/dsa/b53/b53_serdes.c_pt.bc'
source_filename = "../drivers/net/dsa/b53/b53_serdes.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_config:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_config\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_an_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_an_restart\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_an_restart:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_link_state:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_link_state\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_link_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_link_set:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_link_set\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_link_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_phylink_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_phylink_validate\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_phylink_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_b53_serdes_init:\09\09\09\09\09"
module asm "\09.asciz \09\22b53_serdes_init\22\09\09\09\09\09"
module asm "__kstrtabns_b53_serdes_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.b53_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }

@__kstrtab_b53_serdes_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_config = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_config to i32), ptr @__kstrtab_b53_serdes_config, ptr @__kstrtabns_b53_serdes_config }, section "___ksymtab+b53_serdes_config", align 4
@__kstrtab_b53_serdes_an_restart = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_an_restart = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_an_restart = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_an_restart to i32), ptr @__kstrtab_b53_serdes_an_restart, ptr @__kstrtabns_b53_serdes_an_restart }, section "___ksymtab+b53_serdes_an_restart", align 4
@__kstrtab_b53_serdes_link_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_link_state = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_link_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_link_state to i32), ptr @__kstrtab_b53_serdes_link_state, ptr @__kstrtabns_b53_serdes_link_state }, section "___ksymtab+b53_serdes_link_state", align 4
@__kstrtab_b53_serdes_link_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_link_set = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_link_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_link_set to i32), ptr @__kstrtab_b53_serdes_link_set, ptr @__kstrtabns_b53_serdes_link_set }, section "___ksymtab+b53_serdes_link_set", align 4
@__kstrtab_b53_serdes_phylink_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_phylink_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_phylink_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_phylink_validate to i32), ptr @__kstrtab_b53_serdes_phylink_validate, ptr @__kstrtabns_b53_serdes_phylink_validate }, section "___ksymtab+b53_serdes_phylink_validate", align 4
@.str = private unnamed_addr constant [40 x i8] c"SerDes not initialized, check settings\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"SerDes lane %d, model: %d, rev %c%d (OUI: 0x%08x)\0A\00", align 1
@__kstrtab_b53_serdes_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_b53_serdes_init = external dso_local constant [0 x i8], align 1
@__ksymtab_b53_serdes_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @b53_serdes_init to i32), ptr @__kstrtab_b53_serdes_init, ptr @__kstrtabns_b53_serdes_init }, section "___ksymtab+b53_serdes_init", align 4
@__UNIQUE_ID_author453 = internal constant [47 x i8] c"author=Florian Fainelli <f.fainelli@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description454 = internal constant [37 x i8] c"description=B53 Switch SerDes driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license455 = internal constant [21 x i8] c"license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"drivers/net/dsa/b53/b53_serdes.c\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author453, ptr @__UNIQUE_ID_description454, ptr @__UNIQUE_ID_license455, ptr @__ksymtab_b53_serdes_an_restart, ptr @__ksymtab_b53_serdes_config, ptr @__ksymtab_b53_serdes_init, ptr @__ksymtab_b53_serdes_link_set, ptr @__ksymtab_b53_serdes_link_state, ptr @__ksymtab_b53_serdes_phylink_validate], section "llvm.metadata"
@switch.table.b53_serdes_link_state = private unnamed_addr constant [4 x i32] [i32 10, i32 100, i32 1000, i32 2500], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @b53_serdes_config(ptr noundef %0, i32 noundef %1, i32 %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.b53_io_ops, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %4
  %12 = tail call zeroext i8 %9(ptr noundef %0, i32 noundef %1) #4
  %13 = icmp eq i8 %12, -1
  br i1 %13, label %39, label %14

14:                                               ; preds = %11
  tail call fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %12) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #4
  store i16 0, ptr %5, align 2, !annotation !8
  %15 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %15) #4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.b53_io_ops, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32000) #4
  tail call void @mutex_unlock(ptr noundef %15) #4
  tail call void @mutex_lock(ptr noundef %15) #4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.b53_io_ops, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 32, ptr noundef nonnull %5) #4
  call void @mutex_unlock(ptr noundef %15) #4
  %24 = load i16, ptr %5, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #4
  %25 = getelementptr inbounds %struct.phylink_link_state, ptr %3, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 21
  %28 = and i16 %24, -2
  %29 = zext i1 %27 to i16
  %30 = or i16 %28, %29
  call fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %12) #4
  call void @mutex_lock(ptr noundef %15) #4
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.b53_io_ops, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %33(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32000) #4
  call void @mutex_unlock(ptr noundef %15) #4
  call void @mutex_lock(ptr noundef %15) #4
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr inbounds %struct.b53_io_ops, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 32, i16 noundef zeroext %30) #4
  call void @mutex_unlock(ptr noundef %15) #4
  br label %39

39:                                               ; preds = %14, %11, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @b53_serdes_an_restart(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.b53_io_ops, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = tail call zeroext i8 %7(ptr noundef %0, i32 noundef %1) #4
  %11 = icmp eq i8 %10, -1
  br i1 %11, label %32, label %12

12:                                               ; preds = %9
  tail call fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %10) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  %13 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %13) #4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.b53_io_ops, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  tail call void @mutex_unlock(ptr noundef %13) #4
  tail call void @mutex_lock(ptr noundef %13) #4
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.b53_io_ops, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 32, ptr noundef nonnull %3) #4
  call void @mutex_unlock(ptr noundef %13) #4
  %22 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  %23 = or i16 %22, 512
  call fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %10) #4
  call void @mutex_lock(ptr noundef %13) #4
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.b53_io_ops, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  call void @mutex_unlock(ptr noundef %13) #4
  call void @mutex_lock(ptr noundef %13) #4
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.b53_io_ops, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 32, i16 noundef zeroext %23) #4
  call void @mutex_unlock(ptr noundef %13) #4
  br label %32

32:                                               ; preds = %12, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @b53_serdes_link_state(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.b53_io_ops, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %67, label %11

11:                                               ; preds = %3
  %12 = tail call zeroext i8 %9(ptr noundef %0, i32 noundef %1) #4
  %13 = icmp eq i8 %12, -1
  br i1 %13, label %67, label %14

14:                                               ; preds = %11
  tail call fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %12) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #4
  store i16 0, ptr %5, align 2, !annotation !8
  %15 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %15) #4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.b53_io_ops, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32000) #4
  tail call void @mutex_unlock(ptr noundef %15) #4
  tail call void @mutex_lock(ptr noundef %15) #4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.b53_io_ops, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 40, ptr noundef nonnull %5) #4
  call void @mutex_unlock(ptr noundef %15) #4
  %24 = load i16, ptr %5, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #4
  call fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %12) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !8
  call void @mutex_lock(ptr noundef %15) #4
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.b53_io_ops, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 %27(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  call void @mutex_unlock(ptr noundef %15) #4
  call void @mutex_lock(ptr noundef %15) #4
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr inbounds %struct.b53_io_ops, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 %31(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 34, ptr noundef nonnull %4) #4
  call void @mutex_unlock(ptr noundef %15) #4
  %33 = load i16, ptr %4, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  %34 = zext i16 %24 to i32
  %35 = lshr i32 %34, 3
  %36 = and i32 %35, 3
  %37 = getelementptr inbounds [4 x i32], ptr @switch.table.b53_serdes_link_state, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  %40 = lshr i32 %34, 2
  %41 = and i32 %40, 1
  %42 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 6
  %44 = trunc i16 %33 to i8
  %45 = load i8, ptr %43, align 4
  %46 = lshr i8 %44, 3
  %47 = and i8 %46, 4
  %48 = and i8 %45, -6
  %49 = trunc i16 %24 to i8
  %50 = lshr i8 %49, 1
  %51 = and i8 %50, 1
  %52 = or i8 %47, %51
  %53 = or i8 %52, %48
  store i8 %53, ptr %43, align 4
  %54 = and i32 %34, 64
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %14
  %57 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %58, 1
  store i32 %59, ptr %57, align 4
  br label %60

60:                                               ; preds = %56, %14
  %61 = and i32 %34, 32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.phylink_link_state, ptr %2, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, 2
  store i32 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %63, %60, %11, %3
  %68 = phi i32 [ 1, %11 ], [ 0, %63 ], [ 0, %60 ], [ 1, %3 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @b53_serdes_link_set(ptr noundef %0, i32 noundef %1, i32 %2, i32 %3, i1 noundef zeroext %4) #0 {
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.b53_io_ops, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %5
  %13 = tail call zeroext i8 %10(ptr noundef %0, i32 noundef %1) #4
  %14 = icmp eq i8 %13, -1
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  tail call fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %13) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #4
  store i16 0, ptr %6, align 2, !annotation !8
  %16 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %16) #4
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.b53_io_ops, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  tail call void @mutex_unlock(ptr noundef %16) #4
  tail call void @mutex_lock(ptr noundef %16) #4
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.b53_io_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 %23(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 32, ptr noundef nonnull %6) #4
  call void @mutex_unlock(ptr noundef %16) #4
  %25 = load i16, ptr %6, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #4
  %26 = and i16 %25, -2049
  %27 = select i1 %4, i16 0, i16 2048
  %28 = or i16 %26, %27
  call fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %13) #4
  call void @mutex_lock(ptr noundef %16) #4
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.b53_io_ops, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = call i32 %31(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  call void @mutex_unlock(ptr noundef %16) #4
  call void @mutex_lock(ptr noundef %16) #4
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr inbounds %struct.b53_io_ops, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 32, i16 noundef zeroext %28) #4
  call void @mutex_unlock(ptr noundef %16) #4
  br label %37

37:                                               ; preds = %15, %12, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @b53_serdes_phylink_validate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.b53_io_ops, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = tail call zeroext i8 %8(ptr noundef %0, i32 noundef %1) #4
  switch i8 %11, label %19 [
    i8 1, label %15
    i8 0, label %12
  ]

12:                                               ; preds = %10
  %13 = load i32, ptr %2, align 4
  %14 = or i32 %13, 32768
  store i32 %14, ptr %2, align 4
  br label %15

15:                                               ; preds = %12, %10
  %16 = getelementptr i32, ptr %2, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 512
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %15, %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @b53_serdes_init(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.b53_io_ops, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %2
  %12 = tail call zeroext i8 %9(ptr noundef %0, i32 noundef %1) #4
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, -1
  br i1 %14, label %62, label %15

15:                                               ; preds = %11
  tail call fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %12) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #4
  store i16 0, ptr %5, align 2, !annotation !8
  %16 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %16) #4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.b53_io_ops, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -31984) #4
  tail call void @mutex_unlock(ptr noundef %16) #4
  tail call void @mutex_lock(ptr noundef %16) #4
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.b53_io_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 %23(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 32, ptr noundef nonnull %5) #4
  call void @mutex_unlock(ptr noundef %16) #4
  %25 = load i16, ptr %5, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #4
  call fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %12) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !8
  call void @mutex_lock(ptr noundef %16) #4
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.b53_io_ops, ptr %26, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  call void @mutex_unlock(ptr noundef %16) #4
  call void @mutex_lock(ptr noundef %16) #4
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.b53_io_ops, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 36, ptr noundef nonnull %4) #4
  call void @mutex_unlock(ptr noundef %16) #4
  %34 = load i16, ptr %4, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  call fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %12) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #4
  store i16 0, ptr %3, align 2, !annotation !8
  call void @mutex_lock(ptr noundef %16) #4
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr inbounds %struct.b53_io_ops, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -32) #4
  call void @mutex_unlock(ptr noundef %16) #4
  call void @mutex_lock(ptr noundef %16) #4
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr inbounds %struct.b53_io_ops, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 38, ptr noundef nonnull %3) #4
  call void @mutex_unlock(ptr noundef %16) #4
  %43 = load i16, ptr %3, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #4
  %44 = add i16 %25, 1
  %45 = icmp ult i16 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %15
  %47 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 20
  %48 = load ptr, ptr %47, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str) #5
  br label %62

49:                                               ; preds = %15
  %50 = zext i16 %25 to i32
  %51 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 20
  %52 = load ptr, ptr %51, align 4
  %53 = and i32 %50, 63
  %54 = lshr i32 %50, 14
  %55 = add nuw nsw i32 %54, 65
  %56 = lshr i32 %50, 11
  %57 = and i32 %56, 7
  %58 = zext i16 %34 to i32
  %59 = shl nuw i32 %58, 16
  %60 = zext i16 %43 to i32
  %61 = or i32 %59, %60
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %61) #5
  br label %62

62:                                               ; preds = %49, %46, %11, %2
  %63 = phi i32 [ -19, %46 ], [ 0, %49 ], [ -22, %11 ], [ -22, %2 ]
  ret i32 %63
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @b53_serdes_set_lane(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 21
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, %1
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = icmp ugt i8 %1, 1
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 42, i32 noundef 9, ptr noundef null) #4
  br label %9

9:                                                ; preds = %8, %6
  %10 = zext i8 %1 to i16
  %11 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #4
  %12 = getelementptr inbounds %struct.b53_device, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.b53_io_ops, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 62, i16 noundef zeroext -48) #4
  tail call void @mutex_unlock(ptr noundef %11) #4
  tail call void @mutex_lock(ptr noundef %11) #4
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.b53_io_ops, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, i8 noundef zeroext 22, i8 noundef zeroext 60, i16 noundef zeroext %10) #4
  tail call void @mutex_unlock(ptr noundef %11) #4
  store i8 %1, ptr %3, align 4
  br label %21

21:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
