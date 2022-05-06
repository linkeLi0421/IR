; ModuleID = '/llk/IR/drivers/video/fbdev/core/softcursor.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/softcursor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { ptr }
%struct.fb_cursor = type { i16, i16, i16, ptr, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, ptr, %struct.fb_cmap }
%struct.fbcon_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.fb_var_screeninfo, %struct.timer_list, %struct.fb_cursor, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @soft_cursor(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10
  %4 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 10, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %97

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fb_cursor, ptr %1, i32 0, i32 5
  %17 = getelementptr inbounds %struct.fb_cursor, ptr %1, i32 0, i32 5, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 7
  %20 = lshr i32 %19, 3
  %21 = getelementptr inbounds %struct.fb_cursor, ptr %1, i32 0, i32 5, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %20, %22
  %24 = add i32 %23, 56
  %25 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 26
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  %28 = getelementptr inbounds %struct.fbcon_ops, ptr %15, i32 0, i32 25
  %29 = load ptr, ptr %28, align 4
  br i1 %27, label %34, label %30

30:                                               ; preds = %13
  tail call void @kfree(ptr noundef %29) #4
  store i32 %24, ptr %25, align 4
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %24, i32 noundef 2592) #5
  store ptr %31, ptr %28, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, ptr %25, align 4
  br label %97

34:                                               ; preds = %30, %13
  %35 = phi ptr [ %31, %30 ], [ %29, %13 ]
  %36 = getelementptr i8, ptr %35, i32 56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(56) %35, ptr noundef align 4 dereferenceable(56) %16, i32 56, i1 false)
  %37 = add i32 %6, %20
  %38 = sub i32 0, %5
  %39 = and i32 %37, %38
  %40 = getelementptr inbounds %struct.fb_image, ptr %35, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = mul i32 %41, %39
  %43 = add i32 %9, %42
  %44 = sub i32 0, %8
  %45 = and i32 %43, %44
  %46 = tail call ptr @fb_get_buffer_offset(ptr noundef %0, ptr noundef %3, i32 noundef %45) #4
  %47 = getelementptr inbounds %struct.fb_cursor, ptr %1, i32 0, i32 1
  %48 = load i16, ptr %47, align 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %87, label %50

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.fb_cursor, ptr %1, i32 0, i32 2
  %52 = load i16, ptr %51, align 4
  %53 = icmp eq i16 %52, 1
  %54 = icmp eq i32 %23, 0
  br i1 %53, label %59, label %55

55:                                               ; preds = %50
  br i1 %54, label %90, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.fb_image, ptr %35, i32 0, i32 7
  %58 = getelementptr inbounds %struct.fb_cursor, ptr %1, i32 0, i32 3
  br label %75

59:                                               ; preds = %50
  br i1 %54, label %90, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.fb_image, ptr %35, i32 0, i32 7
  %62 = getelementptr inbounds %struct.fb_cursor, ptr %1, i32 0, i32 3
  br label %63

63:                                               ; preds = %63, %60
  %64 = phi i32 [ 0, %60 ], [ %73, %63 ]
  %65 = load ptr, ptr %61, align 4
  %66 = getelementptr i8, ptr %65, i32 %64
  %67 = load i8, ptr %66, align 1
  %68 = load ptr, ptr %62, align 4
  %69 = getelementptr i8, ptr %68, i32 %64
  %70 = load i8, ptr %69, align 1
  %71 = xor i8 %70, %67
  %72 = getelementptr i8, ptr %36, i32 %64
  store i8 %71, ptr %72, align 1
  %73 = add nuw i32 %64, 1
  %74 = icmp eq i32 %73, %23
  br i1 %74, label %90, label %63

75:                                               ; preds = %75, %56
  %76 = phi i32 [ 0, %56 ], [ %85, %75 ]
  %77 = load ptr, ptr %57, align 4
  %78 = getelementptr i8, ptr %77, i32 %76
  %79 = load i8, ptr %78, align 1
  %80 = load ptr, ptr %58, align 4
  %81 = getelementptr i8, ptr %80, i32 %76
  %82 = load i8, ptr %81, align 1
  %83 = and i8 %82, %79
  %84 = getelementptr i8, ptr %36, i32 %76
  store i8 %83, ptr %84, align 1
  %85 = add nuw i32 %76, 1
  %86 = icmp eq i32 %85, %23
  br i1 %86, label %90, label %75

87:                                               ; preds = %34
  %88 = getelementptr inbounds %struct.fb_image, ptr %35, i32 0, i32 7
  %89 = load ptr, ptr %88, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %89, i32 %23, i1 false)
  br label %90

90:                                               ; preds = %87, %75, %63, %59, %55
  %91 = load i32, ptr %40, align 4
  tail call void @fb_pad_aligned_buffer(ptr noundef %46, i32 noundef %39, ptr noundef %36, i32 noundef %20, i32 noundef %91) #4
  %92 = getelementptr inbounds %struct.fb_image, ptr %35, i32 0, i32 7
  store ptr %46, ptr %92, align 4
  %93 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.fb_ops, ptr %94, i32 0, i32 13
  %96 = load ptr, ptr %95, align 4
  tail call void %96(ptr noundef %0, ptr noundef %35) #4
  br label %97

97:                                               ; preds = %90, %33, %2
  %98 = phi i32 [ 0, %90 ], [ -12, %33 ], [ 0, %2 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fb_get_buffer_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_pad_aligned_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

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
