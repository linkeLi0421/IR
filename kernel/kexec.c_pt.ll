; ModuleID = '/llk/IR/kernel/kexec.c_pt.bc'
source_filename = "../kernel/kexec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.kimage = type { i32, ptr, ptr, i32, ptr, ptr, ptr, i32, [16 x %struct.kexec_segment], %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, %struct.kimage_arch, ptr, i32, i32 }
%struct.kexec_segment = type { %union.anon, i32, i32, i32 }
%union.anon = type { ptr }
%struct.kimage_arch = type { i32 }

@kexec_load_disabled = external dso_local local_unnamed_addr global i32, align 4
@kexec_mutex = external dso_local global %struct.mutex, align 4
@kexec_crash_image = external dso_local global ptr, align 4
@kexec_image = external dso_local global ptr, align 4
@crashk_res = external dso_local local_unnamed_addr global %struct.resource, align 4
@.str = private unnamed_addr constant [49 x i8] c"\013kexec: Could not allocate control_code_buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\013kexec: Could not allocate swap buffer\0A\00", align 1
@arch_phys_to_idmap_offset = external dso_local local_unnamed_addr global i64, align 8

@sys_kexec_load = dso_local alias i32 (i32, i32, ptr, i32), ptr @__se_sys_kexec_load

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_kexec_load(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call zeroext i1 @capable(i32 noundef 22) #4
  %7 = xor i1 %6, true
  %8 = load i32, ptr @kexec_load_disabled, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %130, label %11

11:                                               ; preds = %4
  %12 = and i32 %3, 65534
  %13 = icmp ne i32 %12, 0
  %14 = icmp ugt i32 %1, 16
  %15 = or i1 %14, %13
  br i1 %15, label %130, label %16

16:                                               ; preds = %11
  %17 = and i32 %3, -65536
  switch i32 %17, label %130 [
    i32 2621440, label %18
    i32 0, label %18
  ]

18:                                               ; preds = %16, %16
  %19 = shl nuw nsw i32 %1, 4
  %20 = tail call ptr @memdup_user(ptr noundef %5, i32 noundef %19) #4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %20 to i32
  br label %130

24:                                               ; preds = %18
  %25 = tail call i32 @mutex_trylock(ptr noundef nonnull @kexec_mutex) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %128, label %27

27:                                               ; preds = %24
  %28 = and i32 %3, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load ptr, ptr @kexec_crash_image, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @arch_kexec_unprotect_crashkres() #4
  br label %34

34:                                               ; preds = %33, %30
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %38, label %43

36:                                               ; preds = %27
  %37 = icmp eq i32 %1, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %36, %34
  %39 = phi ptr [ @kexec_image, %36 ], [ @kexec_crash_image, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %39) #4, !srcloc !9
  %40 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull %39) #4, !srcloc !10
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = inttoptr i32 %41 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  tail call void @kimage_free(ptr noundef %42) #4
  br label %126

43:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @kexec_crash_image) #4, !srcloc !9
  %44 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @kexec_crash_image) #4, !srcloc !10
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = inttoptr i32 %45 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void @kimage_free(ptr noundef %46) #4
  %47 = load i32, ptr @crashk_res, align 4
  %48 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %49 = trunc i64 %48 to i32
  %50 = add i32 %47, %49
  %51 = icmp ugt i32 %50, %0
  br i1 %51, label %126, label %52

52:                                               ; preds = %43
  %53 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %54 = add i32 %53, %49
  %55 = icmp ult i32 %54, %0
  br i1 %55, label %126, label %56

56:                                               ; preds = %52, %36
  %57 = phi ptr [ @kexec_crash_image, %52 ], [ @kexec_image, %36 ]
  %58 = tail call ptr @do_kimage_alloc_init() #4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %126, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.kimage, ptr %58, i32 0, i32 3
  store i32 %0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.kimage, ptr %58, i32 0, i32 7
  store i32 %1, ptr %62, align 4
  %63 = getelementptr inbounds %struct.kimage, ptr %58, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %63, ptr align 4 %20, i32 %19, i1 false) #4
  br i1 %29, label %64, label %70

64:                                               ; preds = %60
  %65 = load i32, ptr @crashk_res, align 4
  %66 = getelementptr inbounds %struct.kimage, ptr %58, i32 0, i32 12
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.kimage, ptr %58, i32 0, i32 13
  %68 = load i8, ptr %67, align 4
  %69 = or i8 %68, 1
  store i8 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %64, %60
  %71 = tail call i32 @sanity_check_segment_list(ptr noundef nonnull %58) #4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = tail call ptr @kimage_alloc_control_pages(ptr noundef nonnull %58, i32 noundef 0) #4
  %75 = getelementptr inbounds %struct.kimage, ptr %58, i32 0, i32 4
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  br label %87

79:                                               ; preds = %73
  br i1 %29, label %89, label %80

80:                                               ; preds = %79
  %81 = tail call ptr @kimage_alloc_control_pages(ptr noundef nonnull %58, i32 noundef 0) #4
  %82 = getelementptr inbounds %struct.kimage, ptr %58, i32 0, i32 5
  store ptr %81, ptr %82, align 4
  %83 = icmp eq ptr %81, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  %86 = getelementptr inbounds %struct.kimage, ptr %58, i32 0, i32 9
  tail call void @kimage_free_page_list(ptr noundef %86) #4
  br label %87

87:                                               ; preds = %84, %77, %70
  %88 = phi i32 [ %71, %70 ], [ -12, %84 ], [ -12, %77 ]
  tail call void @kfree(ptr noundef nonnull %58) #4
  br label %126

89:                                               ; preds = %80, %79
  %90 = and i32 %3, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.kimage, ptr %58, i32 0, i32 13
  %94 = load i8, ptr %93, align 4
  %95 = or i8 %94, 2
  store i8 %95, ptr %93, align 4
  br label %96

96:                                               ; preds = %92, %89
  %97 = tail call i32 @machine_kexec_prepare(ptr noundef nonnull %58) #4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %96
  %100 = tail call i32 @kimage_crash_copy_vmcoreinfo(ptr noundef nonnull %58) #4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %118

102:                                              ; preds = %105
  %103 = add nuw i32 %106, 1
  %104 = icmp eq i32 %103, %1
  br i1 %104, label %110, label %105

105:                                              ; preds = %102, %99
  %106 = phi i32 [ %103, %102 ], [ 0, %99 ]
  %107 = getelementptr %struct.kimage, ptr %58, i32 0, i32 8, i32 %106
  %108 = tail call i32 @kimage_load_segment(ptr noundef %58, ptr noundef %107) #4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %102, label %118

110:                                              ; preds = %102
  tail call void @kimage_terminate(ptr noundef %58) #4
  %111 = tail call i32 @machine_kexec_post_load(ptr noundef %58) #4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  %114 = ptrtoint ptr %58 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %57) #4, !srcloc !9
  %115 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %114, ptr nonnull %57) #4, !srcloc !10
  %116 = extractvalue { i32, i32 } %115, 0
  %117 = inttoptr i32 %116 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  br label %118

118:                                              ; preds = %113, %110, %105, %99, %96
  %119 = phi ptr [ %117, %113 ], [ %58, %110 ], [ %58, %99 ], [ %58, %96 ], [ %58, %105 ]
  %120 = phi i32 [ 0, %113 ], [ %111, %110 ], [ %100, %99 ], [ %97, %96 ], [ %108, %105 ]
  %121 = load ptr, ptr @kexec_crash_image, align 4
  %122 = icmp ne ptr %121, null
  %123 = select i1 %29, i1 %122, i1 false
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  tail call void @arch_kexec_protect_crashkres() #4
  br label %125

125:                                              ; preds = %124, %118
  tail call void @kimage_free(ptr noundef %119) #4
  br label %126

126:                                              ; preds = %125, %87, %56, %52, %43, %38
  %127 = phi i32 [ 0, %38 ], [ %120, %125 ], [ -12, %56 ], [ -99, %43 ], [ -99, %52 ], [ %88, %87 ]
  tail call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #4
  br label %128

128:                                              ; preds = %126, %24
  %129 = phi i32 [ %127, %126 ], [ -16, %24 ]
  tail call void @kfree(ptr noundef %20) #4
  br label %130

130:                                              ; preds = %128, %22, %16, %11, %4
  %131 = phi i32 [ %23, %22 ], [ %129, %128 ], [ -22, %16 ], [ -22, %11 ], [ -1, %4 ]
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_kexec_unprotect_crashkres() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kimage_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @machine_kexec_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kimage_crash_copy_vmcoreinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kimage_load_segment(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kimage_terminate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @machine_kexec_post_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_kexec_protect_crashkres() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_kimage_alloc_init() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sanity_check_segment_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kimage_alloc_control_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kimage_free_page_list(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2153707405}
!9 = !{i64 885526, i64 2148375497, i64 2148375523, i64 2148375570, i64 2148375592, i64 2148375620, i64 2148375640}
!10 = !{i64 894176, i64 894193, i64 894217, i64 894243, i64 894261}
!11 = !{i64 2153707732}
!12 = !{i64 2153708610}
!13 = !{i64 2153708937}
!14 = !{i64 2153709757}
!15 = !{i64 2153710078}
