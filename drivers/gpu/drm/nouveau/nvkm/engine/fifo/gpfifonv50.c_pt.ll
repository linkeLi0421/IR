; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifonv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/gpfifonv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nv50_channel_gpfifo_v0 = type { i8, i8, [2 x i8], i32, i64, i64, i64 }
%struct.nv50_fifo_chan = type { ptr, %struct.nvkm_fifo_chan, ptr, ptr, ptr, ptr, ptr, [16 x ptr] }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_ramht = type { ptr, ptr, ptr, i32, i32, [0 x %struct.nvkm_ramht_data] }
%struct.nvkm_ramht_data = type { ptr, i32, i32 }

@nv50_fifo_gpfifo_oclass = dso_local local_unnamed_addr constant %struct.nvkm_fifo_chan_oclass { ptr @nv50_fifo_gpfifo_new, %struct.nvkm_sclass { i32 0, i32 0, i32 20591, ptr null, ptr null } }, align 4
@.str = private unnamed_addr constant [63 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [114 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel gpfifo vers %d vmm %llx pushbuf %llx ioffset %016llx ilength %08x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_fifo_gpfifo_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_client, ptr %9, i32 0, i32 1
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %3) #5
  br label %20

20:                                               ; preds = %13, %5
  %21 = icmp ugt i32 %3, 31
  br i1 %21, label %22, label %150

22:                                               ; preds = %20
  %23 = load i8, ptr %2, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %150

25:                                               ; preds = %22
  %26 = icmp eq i32 %3, 32
  br i1 %26, label %27, label %150

27:                                               ; preds = %25
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = icmp ugt i32 %30, 4
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nvkm_client, ptr %28, i32 0, i32 1
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %2, i32 0, i32 6
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %2, i32 0, i32 5
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %2, i32 0, i32 4
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %2, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef 0, i64 noundef %39, i64 noundef %41, i64 noundef %43, i32 noundef %45) #5
  br label %47

47:                                               ; preds = %32, %27
  %48 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %2, i32 0, i32 5
  %49 = load i64, ptr %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %150, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 424) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %150, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %53, i32 0, i32 1, i32 3
  store ptr %56, ptr %4, align 4
  %57 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %2, i32 0, i32 6
  %58 = load i64, ptr %57, align 8
  %59 = load i64, ptr %48, align 8
  %60 = tail call i32 @nv50_fifo_chan_ctor(ptr noundef %0, i64 noundef %58, i64 noundef %59, ptr noundef %1, ptr noundef nonnull %53) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %150

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %53, i32 0, i32 1, i32 5
  %64 = load i16, ptr %63, align 8
  %65 = trunc i16 %64 to i8
  %66 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %2, i32 0, i32 1
  store i8 %65, ptr %66, align 1
  %67 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %2, i32 0, i32 4
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %2, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %70, 3
  %72 = icmp ugt i32 %70, 15
  %73 = add nsw i32 %71, -1
  %74 = tail call i32 @llvm.ctlz.i32(i32 %73, i1 false) #7, !range !8
  %75 = sub nuw nsw i32 32, %74
  %76 = select i1 %72, i32 %75, i32 0
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %53, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8
  %80 = load ptr, ptr %79, align 8
  %81 = load ptr, ptr %80, align 4
  %82 = tail call ptr %81(ptr noundef %79) #7
  %83 = load ptr, ptr %78, align 8
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  tail call void %86(ptr noundef %83, i32 noundef 60, i32 noundef 1077895288) #7
  %87 = load ptr, ptr %78, align 8
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  tail call void %90(ptr noundef %87, i32 noundef 68, i32 noundef 16793599) #7
  %91 = load ptr, ptr %78, align 8
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %53, i32 0, i32 1, i32 7
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.nvkm_mm_node, ptr %98, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = lshr i32 %100, 4
  tail call void %94(ptr noundef %91, i32 noundef 72, i32 noundef %101) #7
  %102 = load ptr, ptr %78, align 8
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %103, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = trunc i64 %68 to i32
  tail call void %105(ptr noundef %102, i32 noundef 80, i32 noundef %106) #7
  %107 = load ptr, ptr %78, align 8
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %108, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = lshr i64 %68, 32
  %112 = shl nsw i64 %77, 16
  %113 = or i64 %112, %111
  %114 = trunc i64 %113 to i32
  tail call void %110(ptr noundef %107, i32 noundef 84, i32 noundef %114) #7
  %115 = load ptr, ptr %78, align 8
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %116, i32 0, i32 3
  %118 = load ptr, ptr %117, align 4
  tail call void %118(ptr noundef %115, i32 noundef 96, i32 noundef 2147483647) #7
  %119 = load ptr, ptr %78, align 8
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %120, i32 0, i32 3
  %122 = load ptr, ptr %121, align 4
  tail call void %122(ptr noundef %119, i32 noundef 120, i32 noundef 0) #7
  %123 = load ptr, ptr %78, align 8
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  tail call void %126(ptr noundef %123, i32 noundef 124, i32 noundef 805306369) #7
  %127 = load ptr, ptr %78, align 8
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %128, i32 0, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.nv50_fifo_chan, ptr %53, i32 0, i32 6
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %struct.nvkm_ramht, ptr %132, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = shl i32 %134, 27
  %136 = add i32 %135, -1207959552
  %137 = getelementptr inbounds %struct.nvkm_ramht, ptr %132, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %138, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.nvkm_mm_node, ptr %140, i32 0, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = lshr i32 %142, 4
  %144 = or i32 %136, %143
  %145 = or i32 %144, 67108864
  tail call void %130(ptr noundef %127, i32 noundef 128, i32 noundef %145) #7
  %146 = load ptr, ptr %78, align 8
  %147 = load ptr, ptr %146, align 8
  %148 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  tail call void %149(ptr noundef %146) #7
  br label %150

150:                                              ; preds = %62, %55, %51, %47, %25, %22, %20
  %151 = phi i32 [ 0, %62 ], [ -22, %47 ], [ -12, %51 ], [ %60, %55 ], [ -38, %20 ], [ -38, %22 ], [ -7, %25 ]
  ret i32 %151
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fifo_chan_ctor(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }

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
!8 = !{i32 0, i32 33}
