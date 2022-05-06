; ModuleID = '/llk/IR/drivers/video/fbdev/core/fb_sys_fops.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fb_sys_fops.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_sys_read:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_sys_read\22\09\09\09\09\09"
module asm "__kstrtabns_fb_sys_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_sys_write:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_sys_write\22\09\09\09\09\09"
module asm "__kstrtabns_fb_sys_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, ptr, i32, ptr, ptr, ptr, i8 }
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
%union.anon.65 = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_fb_sys_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_sys_read = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_sys_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_sys_read to i32), ptr @__kstrtab_fb_sys_read, ptr @__kstrtabns_fb_sys_read }, section "___ksymtab_gpl+fb_sys_read", align 4
@__kstrtab_fb_sys_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_sys_write = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_sys_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_sys_write to i32), ptr @__kstrtab_fb_sys_write, ptr @__kstrtabns_fb_sys_write }, section "___ksymtab_gpl+fb_sys_write", align 4
@__UNIQUE_ID_author259 = internal constant [53 x i8] c"fb_sys_fops.author=Antonino Daplas <adaplas@pol.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [61 x i8] c"fb_sys_fops.description=Generic file read (fb in system RAM)\00", section ".modinfo", align 1
@__UNIQUE_ID_file261 = internal constant [54 x i8] c"fb_sys_fops.file=drivers/video/fbdev/core/fb_sys_fops\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [24 x i8] c"fb_sys_fops.license=GPL\00", section ".modinfo", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__ksymtab_fb_sys_read, ptr @__ksymtab_fb_sys_write], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_sys_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %61

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 25
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 2
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i32 [ %16, %14 ], [ %12, %10 ]
  %19 = icmp ugt i32 %18, %6
  br i1 %19, label %20, label %61

20:                                               ; preds = %17
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %2)
  %22 = add i32 %21, %6
  %23 = icmp ugt i32 %22, %18
  %24 = sub i32 %18, %6
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 24
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %6
  %29 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fb_ops, ptr %30, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %20
  %35 = tail call i32 %32(ptr noundef %0) #5
  br label %36

36:                                               ; preds = %34, %20
  %37 = icmp slt i32 %25, 0
  %38 = load i1, ptr @check_copy_size.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %36
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #5
  br label %42

42:                                               ; preds = %41, %36
  br i1 %37, label %61, label %43, !prof !8

43:                                               ; preds = %42
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %25, i32 -1090519040) #6, !srcloc !9
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = tail call ptr @llvm.thread.pointer() #5
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %49) #7, !srcloc !10
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #5, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !12
  %53 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %28, i32 noundef %25) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #5, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !12
  br label %54

54:                                               ; preds = %47, %43
  %55 = phi i32 [ %53, %47 ], [ %25, %43 ]
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = zext i32 %25 to i64
  %59 = load i64, ptr %3, align 8
  %60 = add i64 %59, %58
  store i64 %60, ptr %3, align 8
  br label %61

61:                                               ; preds = %57, %54, %42, %17, %4
  %62 = phi i32 [ -1, %4 ], [ 0, %17 ], [ %25, %57 ], [ -14, %54 ], [ -14, %42 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fb_sys_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 27
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 25
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 2
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i32 [ %16, %14 ], [ %12, %10 ]
  %19 = icmp ult i32 %18, %6
  br i1 %19, label %70, label %20

20:                                               ; preds = %17
  %21 = icmp ult i32 %18, %2
  %22 = select i1 %21, i32 -27, i32 -28
  %23 = tail call i32 @llvm.umin.i32(i32 %18, i32 %2)
  %24 = select i1 %21, i32 -27, i32 0
  %25 = add i32 %23, %6
  %26 = icmp ugt i32 %25, %18
  %27 = sub i32 %18, %6
  %28 = select i1 %26, i32 %27, i32 %23
  %29 = select i1 %26, i32 %22, i32 %24
  %30 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 24
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %6
  %33 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 20
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fb_ops, ptr %34, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %20
  %39 = tail call i32 %36(ptr noundef %0) #5
  br label %40

40:                                               ; preds = %38, %20
  %41 = icmp slt i32 %28, 0
  %42 = load i1, ptr @check_copy_size.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !8

45:                                               ; preds = %40
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #5
  br label %46

46:                                               ; preds = %45, %40
  br i1 %41, label %70, label %47, !prof !8

47:                                               ; preds = %46
  %48 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %28, i32 -1090519040) #6, !srcloc !13
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58, !prof !14

51:                                               ; preds = %47
  %52 = tail call ptr @llvm.thread.pointer() #5
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %54 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %53) #7, !srcloc !10
  %55 = and i32 %54, -13
  %56 = or i32 %55, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #5, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !12
  %57 = tail call i32 @arm_copy_from_user(ptr noundef %32, ptr noundef %1, i32 noundef %28) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #5, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !12
  br label %58

58:                                               ; preds = %51, %47
  %59 = phi i32 [ %57, %51 ], [ %28, %47 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61, !prof !14

61:                                               ; preds = %58
  %62 = sub i32 %28, %59
  %63 = getelementptr i8, ptr %32, i32 %62
  tail call void @llvm.memset.p0.i32(ptr align 1 %63, i8 0, i32 %59, i1 false) #5
  br label %70

64:                                               ; preds = %58
  %65 = icmp eq i32 %29, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = zext i32 %28 to i64
  %68 = load i64, ptr %3, align 8
  %69 = add i64 %68, %67
  store i64 %69, ptr %3, align 8
  br label %70

70:                                               ; preds = %66, %64, %61, %46, %17, %4
  %71 = phi i32 [ -1, %4 ], [ -27, %17 ], [ %28, %66 ], [ %29, %64 ], [ -14, %61 ], [ -14, %46 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

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
!9 = !{i64 2152039802, i64 2152039827}
!10 = !{i64 4535336}
!11 = !{i64 4535533}
!12 = !{i64 2152020812}
!13 = !{i64 2152039224, i64 2152039249}
!14 = !{!"branch_weights", i32 2000, i32 1}
