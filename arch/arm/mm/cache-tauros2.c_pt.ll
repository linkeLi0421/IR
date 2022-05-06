; ModuleID = '/llk/IR/arch/arm/mm/cache-tauros2.c_pt.bc'
source_filename = "../arch/arm/mm/cache-tauros2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@tauros2_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,tauros2-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = private unnamed_addr constant [47 x i8] c"\016Not found marvell,tauros2-cache, disable it\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"marvell,tauros2-cache-features\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"\016Not found marvell,tauros-cache-features property, disable extra features\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\016Tauros2: Enabling L2 cache.\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ARMv7\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\012Tauros2: Unable to detect CPU mode.\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"\016Tauros2: L2 cache support initialised in %s mode.\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\016Tauros2: %s L2 prefetch.\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Enabling\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Disabling\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\016Tauros2: %s burst8 line fill.\0A\00", align 1
@processor_id = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tauros2_init(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tauros2_ids, ptr noundef null) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  br label %14

7:                                                ; preds = %1
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #5
  br label %14

12:                                               ; preds = %7
  %13 = load i32, ptr %2, align 4
  br label %14

14:                                               ; preds = %12, %10, %5
  %15 = phi i32 [ 0, %10 ], [ %13, %12 ], [ %0, %5 ]
  call fastcc void @tauros2_internal_init(i32 noundef %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tauros2_internal_init(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call i32 asm "mrc p15, 1, $0, c15, c1, 0", "=r"() #7, !srcloc !9
  %3 = and i32 %0, 1
  %4 = icmp eq i32 %3, 0
  %5 = and i32 %2, -17825793
  %6 = select i1 %4, ptr @.str.9, ptr @.str.8
  %7 = shl nuw nsw i32 %3, 24
  %8 = or i32 %5, %7
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %6) #5
  %10 = and i32 %0, 2
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @.str.9, ptr @.str.8
  %13 = shl nuw nsw i32 %10, 19
  %14 = or i32 %8, %13
  %15 = xor i32 %14, 16777216
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %12) #5
  tail call void asm sideeffect "mcr p15, 1, $0, c15, c1, 0", "r"(i32 %15) #4, !srcloc !10
  %17 = load i32, ptr @processor_id, align 4
  %18 = and i32 %17, 983040
  %19 = icmp eq i32 %18, 983040
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = tail call i32 asm "mrc p15, 0, $0, c0, c1, 7\0A", "=r"() #7, !srcloc !11
  %22 = and i32 %21, 15
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1\0A", "=r"() #7, !srcloc !12
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #5
  %30 = or i32 %25, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 1\0A", "r"(i32 %30) #4, !srcloc !13
  br label %33

31:                                               ; preds = %20, %1
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #5
  br label %35

33:                                               ; preds = %28, %24
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #5
  br label %35

35:                                               ; preds = %33, %31
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { cold }
attributes #7 = { nounwind readnone }

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
!9 = !{i64 3519}
!10 = !{i64 3641}
!11 = !{i64 3857}
!12 = !{i64 3989}
!13 = !{i64 4115}
