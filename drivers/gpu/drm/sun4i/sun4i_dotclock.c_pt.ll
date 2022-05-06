; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_dotclock.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_dotclock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_dclk_create:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_dclk_create\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_dclk_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_dclk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_dclk_free\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_dclk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.sun4i_tcon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.sun4i_dclk = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@sun4i_dclk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @sun4i_dclk_enable, ptr @sun4i_dclk_disable, ptr @sun4i_dclk_is_enabled, ptr null, ptr null, ptr null, ptr @sun4i_dclk_recalc_rate, ptr @sun4i_dclk_round_rate, ptr null, ptr null, ptr null, ptr @sun4i_dclk_set_rate, ptr null, ptr null, ptr @sun4i_dclk_get_phase, ptr @sun4i_dclk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_sun4i_dclk_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_dclk_create = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_dclk_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_dclk_create to i32), ptr @__kstrtab_sun4i_dclk_create, ptr @__kstrtabns_sun4i_dclk_create }, section "___ksymtab+sun4i_dclk_create", align 4
@__kstrtab_sun4i_dclk_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_dclk_free = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_dclk_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_dclk_free to i32), ptr @__kstrtab_sun4i_dclk_free, ptr @__kstrtabns_sun4i_dclk_free }, section "___ksymtab+sun4i_dclk_free", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_sun4i_dclk_create, ptr @__ksymtab_sun4i_dclk_free], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_dclk_create(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #5
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @__clk_get_name(ptr noundef %8) #5
  store ptr %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @of_property_read_string_helper(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %13 = call i32 @llvm.smin.i32(i32 %12, i32 0) #5
  %14 = icmp sgt i32 %12, -1
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 20, i32 noundef 3520) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sun4i_dclk, ptr %16, i32 0, i32 2
  store ptr %1, ptr %19, align 4
  %20 = load ptr, ptr %3, align 4
  store ptr %20, ptr %5, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @sun4i_dclk_ops, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sun4i_dclk, ptr %16, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 2
  store ptr %5, ptr %28, align 4
  %29 = call ptr @clk_register(ptr noundef %0, ptr noundef nonnull %16) #5
  %30 = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 7
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %32 = ptrtoint ptr %29 to i32
  %33 = select i1 %31, i32 %32, i32 0
  br label %34

34:                                               ; preds = %18, %15, %2
  %35 = phi i32 [ %13, %2 ], [ -12, %15 ], [ %33, %18 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_dclk_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sun4i_tcon, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_unregister(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sun4i_dclk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 68, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_dclk_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sun4i_dclk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 68, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.sun4i_dclk, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 68, ptr noundef nonnull %2) #5
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, -2147483648
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.sun4i_dclk, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 68, ptr noundef nonnull %3) #5
  %7 = load i32, ptr %3, align 4
  %8 = and i32 %7, 127
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1, i32 %8
  %11 = udiv i32 %1, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.sun4i_dclk, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sun4i_tcon, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.sun4i_tcon, ptr %5, i32 0, i32 8
  %9 = load i8, ptr %8, align 4
  %10 = icmp ugt i8 %7, %9
  br i1 %10, label %45, label %11

11:                                               ; preds = %3
  %12 = zext i8 %7 to i32
  %13 = zext i32 %1 to i64
  br label %14

14:                                               ; preds = %29, %11
  %15 = phi i32 [ 0, %11 ], [ %40, %29 ]
  %16 = phi i8 [ 1, %11 ], [ %39, %29 ]
  %17 = phi i32 [ %12, %11 ], [ %41, %29 ]
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, %13
  %20 = icmp ugt i64 %19, 4294967295
  br i1 %20, label %45, label %21

21:                                               ; preds = %14
  %22 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #5
  %23 = trunc i64 %19 to i32
  %24 = tail call i32 @clk_hw_round_rate(ptr noundef %22, i32 noundef %23) #5
  %25 = zext i32 %24 to i64
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = trunc i32 %17 to i8
  br label %45

29:                                               ; preds = %21
  %30 = udiv i32 %24, %17
  %31 = sub i32 %1, %30
  %32 = tail call i32 @llvm.abs.i32(i32 %31, i1 false)
  %33 = zext i8 %16 to i32
  %34 = udiv i32 %15, %33
  %35 = sub i32 %1, %34
  %36 = tail call i32 @llvm.abs.i32(i32 %35, i1 false)
  %37 = icmp slt i32 %32, %36
  %38 = trunc i32 %17 to i8
  %39 = select i1 %37, i8 %38, i8 %16
  %40 = select i1 %37, i32 %24, i32 %15
  %41 = add nuw i32 %17, 1
  %42 = load i8, ptr %8, align 4
  %43 = zext i8 %42 to i32
  %44 = icmp ult i32 %17, %43
  br i1 %44, label %14, label %45

45:                                               ; preds = %29, %27, %14, %3
  %46 = phi i8 [ %28, %27 ], [ 1, %3 ], [ %39, %29 ], [ %16, %14 ]
  %47 = phi i32 [ %24, %27 ], [ 0, %3 ], [ %40, %29 ], [ %15, %14 ]
  store i32 %47, ptr %2, align 4
  %48 = zext i8 %46 to i32
  %49 = udiv i32 %47, %48
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = udiv i32 %2, %1
  %5 = getelementptr inbounds %struct.sun4i_dclk, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = and i32 %4, 255
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 68, i32 noundef 127, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_get_phase(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.sun4i_dclk, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 136, ptr noundef nonnull %2) #5
  %6 = load i32, ptr %2, align 4
  %7 = lshr i32 %6, 28
  %8 = and i32 %7, 3
  %9 = mul nuw nsw i32 %8, 120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_dclk_set_phase(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = sdiv i32 %1, 120
  %4 = shl i32 %3, 28
  %5 = getelementptr inbounds %struct.sun4i_dclk, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 136, i32 noundef 805306368, i32 noundef %4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
