; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadowramin.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_source = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.priv = type { ptr, i32 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.120 }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [7 x i8] c"PRAMIN\00", align 1
@nvbios_ramin = dso_local local_unnamed_addr constant %struct.nvbios_source { ptr @.str, ptr @pramin_init, ptr @pramin_fini, ptr @pramin_read, ptr null, i8 1, i8 0, i8 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: ... display disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: ... not enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: ... not in vram\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%s: ... out of memory\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pramin_init(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 15
  %6 = load i32, ptr %5, align 8
  %7 = icmp ult i32 %6, 80
  br i1 %7, label %113, label %8

8:                                                ; preds = %2
  %9 = icmp ugt i32 %6, 367
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 368
  %14 = zext i1 %13 to i32
  br label %29

15:                                               ; preds = %8
  %16 = icmp ugt i32 %6, 271
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 138244
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %29

22:                                               ; preds = %15
  %23 = icmp ugt i32 %6, 191
  br i1 %23, label %24, label %50

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 140544
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %29

29:                                               ; preds = %24, %17, %10
  %30 = phi i32 [ %14, %10 ], [ %21, %17 ], [ %28, %24 ]
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %113

37:                                               ; preds = %33
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.1, ptr noundef %41) #5
  br label %113

42:                                               ; preds = %29
  %43 = load i32, ptr %5, align 8
  %44 = icmp ugt i32 %43, 319
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 6446852
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %55

50:                                               ; preds = %42, %22
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 6397700
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i32 [ %49, %45 ], [ %54, %50 ]
  %57 = zext i32 %56 to i64
  %58 = and i64 %57, 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %62, 3
  br i1 %63, label %64, label %113

64:                                               ; preds = %60
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr inbounds %struct.nvkm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.2, ptr noundef %68) #5
  br label %113

69:                                               ; preds = %55
  %70 = and i64 %57, 3
  %71 = icmp eq i64 %70, 1
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = icmp ugt i32 %74, 3
  br i1 %75, label %76, label %113

76:                                               ; preds = %72
  %77 = load ptr, ptr %3, align 4
  %78 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.3, ptr noundef %80) #5
  br label %113

81:                                               ; preds = %69
  %82 = and i64 %57, 4294967040
  %83 = icmp eq i64 %82, 0
  %84 = lshr i32 %56, 8
  br i1 %83, label %85, label %91

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 5888
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %90 = add i32 %89, 15
  br label %91

91:                                               ; preds = %85, %81
  %92 = phi i32 [ %84, %81 ], [ %90, %85 ]
  %93 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %94 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 3264, i32 noundef 8) #6
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.4, ptr noundef %104) #5
  br label %113

105:                                              ; preds = %91
  store ptr %0, ptr %94, align 8
  %106 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 5888
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %110 = getelementptr inbounds %struct.priv, ptr %94, i32 0, i32 1
  store i32 %109, ptr %110, align 4
  %111 = load ptr, ptr %106, align 4
  %112 = getelementptr i8, ptr %111, i32 5888
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %92) #4, !srcloc !11
  br label %113

113:                                              ; preds = %105, %100, %96, %76, %72, %64, %60, %37, %33, %2
  %114 = phi ptr [ %94, %105 ], [ null, %2 ], [ inttoptr (i32 -19 to ptr), %37 ], [ inttoptr (i32 -19 to ptr), %33 ], [ inttoptr (i32 -19 to ptr), %64 ], [ inttoptr (i32 -19 to ptr), %60 ], [ inttoptr (i32 -19 to ptr), %76 ], [ inttoptr (i32 -19 to ptr), %72 ], [ inttoptr (i32 -12 to ptr), %100 ], [ inttoptr (i32 -12 to ptr), %96 ]
  ret ptr %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pramin_fini(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.priv, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 5888
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #4, !srcloc !11
  tail call void @kfree(ptr noundef nonnull %0) #4
  br label %12

12:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pramin_read(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %2, %1
  %8 = icmp ult i32 %7, 1048577
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = icmp ugt i32 %7, %1
  br i1 %10, label %11, label %24

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %13 = getelementptr inbounds %struct.nvkm_bios, ptr %3, i32 0, i32 2
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ %1, %11 ], [ %22, %14 ]
  %16 = load ptr, ptr %12, align 4
  %17 = add i32 %15, 7340032
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr i8, ptr %20, i32 %15
  store i32 %19, ptr %21, align 4
  %22 = add i32 %15, 4
  %23 = icmp ult i32 %22, %7
  br i1 %23, label %14, label %24

24:                                               ; preds = %14, %9, %4
  %25 = phi i32 [ 0, %4 ], [ %2, %9 ], [ %2, %14 ]
  ret i32 %25
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!8 = !{i64 3941035}
!9 = !{i64 2151480488}
!10 = !{i64 2151481710}
!11 = !{i64 3940617}
