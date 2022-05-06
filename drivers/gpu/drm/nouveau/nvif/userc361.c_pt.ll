; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvif/userc361.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvif/userc361.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_user_func = type { ptr, ptr }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }

@nvif_userc361 = dso_local local_unnamed_addr constant %struct.nvif_user_func { ptr @nvif_userc361_doorbell, ptr @nvif_userc361_time }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvif_userc361_doorbell(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvif_user, ptr %0, i32 0, i32 1, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 144
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !9
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %1) #2, !srcloc !10
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvif_user, ptr %0, i32 0, i32 1
  tail call void @nvif_object_wr(ptr noundef %9, i32 noundef 4, i64 noundef 144, i32 noundef %1) #2
  br label %10

10:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @nvif_userc361_time(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvif_user, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nvif_user, ptr %0, i32 0, i32 1, i32 6
  br label %4

4:                                                ; preds = %30, %1
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !8

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %5, i32 132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #2, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  br label %12

10:                                               ; preds = %4
  %11 = tail call i32 @nvif_object_rd(ptr noundef %2, i32 noundef 4, i64 noundef 132) #2
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %9, %7 ], [ %11, %10 ]
  %14 = load ptr, ptr %3, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16, !prof !8

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 128
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #2, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  br label %21

19:                                               ; preds = %12
  %20 = tail call i32 @nvif_object_rd(ptr noundef %2, i32 noundef 4, i64 noundef 128) #2
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %18, %16 ], [ %20, %19 ]
  %23 = load ptr, ptr %3, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !8

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 132
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #2, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  br label %30

28:                                               ; preds = %21
  %29 = tail call i32 @nvif_object_rd(ptr noundef %2, i32 noundef 4, i64 noundef 132) #2
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  %32 = icmp eq i32 %13, %31
  br i1 %32, label %33, label %4

33:                                               ; preds = %30
  %34 = zext i32 %13 to i64
  %35 = shl nuw i64 %34, 32
  %36 = zext i32 %22 to i64
  %37 = or i64 %35, %36
  ret i64 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2151476827}
!10 = !{i64 3935734}
!11 = !{i64 3936152}
!12 = !{i64 2151475605}
