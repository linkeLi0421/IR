; ModuleID = '/llk/IR/kernel/time/vsyscall.c_pt.bc'
source_filename = "../kernel/time/vsyscall.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.timezone = type { i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.vdso_data = type { i32, i32, i64, i64, i32, i32, %union.anon, i32, i32, i32, i32, %struct.arch_vdso_data }
%union.anon = type { [12 x %struct.vdso_timestamp] }
%struct.vdso_timestamp = type { i64, i64 }
%struct.arch_vdso_data = type {}
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.timekeeper = type { %struct.tk_read_base, %struct.tk_read_base, i64, i32, %struct.timespec64, i64, i64, i64, i32, i32, i8, i64, i64, %struct.timespec64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.tk_read_base = type { ptr, i64, i64, i32, i32, i64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.59, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.59 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@hrtimer_resolution = external dso_local local_unnamed_addr global i32, align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@timekeeper_lock = external dso_local global %struct.raw_spinlock, align 4
@vdso_data = external dso_local local_unnamed_addr global ptr, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_vsyscall(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @vdso_data, align 4
  %4 = load i32, ptr %3, align 8
  %5 = add i32 %4, 1
  store volatile i32 %5, ptr %3, align 8
  %6 = getelementptr %struct.vdso_data, ptr %3, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, 1
  store volatile i32 %8, ptr %6, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #3, !srcloc !8
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.clocksource, ptr %9, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr %struct.vdso_data, ptr %3, i32 1, i32 1
  store i32 %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 6
  %15 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.tk_read_base, ptr %0, i32 0, i32 5
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 1
  store i64 %18, ptr %19, align 8
  %20 = getelementptr %struct.vdso_data, ptr %3, i32 0, i32 6, i32 0, i32 5
  %21 = load i64, ptr %15, align 8
  store i64 %21, ptr %20, align 8
  %22 = load i64, ptr %17, align 8
  %23 = getelementptr inbounds %struct.tk_read_base, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = lshr i64 %22, %25
  %27 = getelementptr %struct.vdso_data, ptr %3, i32 0, i32 6, i32 0, i32 5, i32 1
  store i64 %26, ptr %27, align 8
  %28 = getelementptr %struct.vdso_data, ptr %3, i32 0, i32 6, i32 0, i32 6
  %29 = load i64, ptr %15, align 8
  %30 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 4
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %31, %29
  store i64 %32, ptr %28, align 8
  %33 = load i64, ptr %17, align 8
  %34 = load i32, ptr %23, align 4
  %35 = zext i32 %34 to i64
  %36 = lshr i64 %33, %35
  %37 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 4, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add i64 %36, %39
  %41 = getelementptr %struct.vdso_data, ptr %3, i32 0, i32 6, i32 0, i32 6, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store i64 %40, ptr %2, align 8
  %42 = icmp ugt i64 %40, 999999999
  br i1 %42, label %43, label %50

43:                                               ; preds = %43, %1
  %44 = phi i32 [ %48, %43 ], [ 0, %1 ]
  %45 = phi i64 [ %47, %43 ], [ %40, %1 ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %2, i64 %45) #3, !srcloc !9
  %46 = load i64, ptr %2, align 8
  %47 = add i64 %46, -1000000000
  store i64 %47, ptr %2, align 8
  %48 = add i32 %44, 1
  %49 = icmp ugt i64 %47, 999999999
  br i1 %49, label %43, label %50

50:                                               ; preds = %43, %1
  %51 = phi i64 [ %40, %1 ], [ %47, %43 ]
  %52 = phi i32 [ 0, %1 ], [ %48, %43 ]
  store i64 %51, ptr %41, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %53 = zext i32 %52 to i64
  %54 = load i64, ptr %28, align 8
  %55 = add i64 %54, %53
  store i64 %55, ptr %28, align 8
  %56 = load i32, ptr @hrtimer_resolution, align 4
  %57 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 9
  store volatile i32 %56, ptr %57, align 8
  %58 = icmp eq i32 %11, 0
  br i1 %58, label %152, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.tk_read_base, ptr %0, i32 0, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 2
  store i64 %61, ptr %62, align 8
  %63 = getelementptr inbounds %struct.tk_read_base, ptr %0, i32 0, i32 1
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 3
  store i64 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.tk_read_base, ptr %0, i32 0, i32 3
  %67 = load i32, ptr %66, align 8
  %68 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 4
  store i32 %67, ptr %68, align 8
  %69 = load i32, ptr %23, align 4
  %70 = getelementptr inbounds %struct.vdso_data, ptr %3, i32 0, i32 5
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 1, i32 2
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr %struct.vdso_data, ptr %3, i32 1, i32 2
  store i64 %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 1, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr %struct.vdso_data, ptr %3, i32 1, i32 3
  store i64 %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 1, i32 3
  %78 = load i32, ptr %77, align 8
  %79 = getelementptr %struct.vdso_data, ptr %3, i32 1, i32 4
  store i32 %78, ptr %79, align 8
  %80 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 1, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr %struct.vdso_data, ptr %3, i32 1, i32 5
  store i32 %81, ptr %82, align 4
  %83 = getelementptr %struct.vdso_data, ptr %3, i32 0, i32 6, i32 0, i32 1
  %84 = load i64, ptr %15, align 8
  %85 = load i64, ptr %30, align 8
  %86 = add i64 %85, %84
  store i64 %86, ptr %83, align 8
  %87 = load i64, ptr %17, align 8
  %88 = load i32, ptr %37, align 8
  %89 = sext i32 %88 to i64
  %90 = load i32, ptr %23, align 4
  %91 = zext i32 %90 to i64
  %92 = shl i64 %89, %91
  %93 = add i64 %92, %87
  %94 = shl i64 1000000000, %91
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %106, label %96

96:                                               ; preds = %96, %59
  %97 = phi i64 [ %101, %96 ], [ %86, %59 ]
  %98 = phi i64 [ %104, %96 ], [ %94, %59 ]
  %99 = phi i64 [ %100, %96 ], [ %93, %59 ]
  %100 = sub i64 %99, %98
  %101 = add i64 %97, 1
  store i64 %101, ptr %83, align 8
  %102 = load i32, ptr %23, align 4
  %103 = zext i32 %102 to i64
  %104 = shl i64 1000000000, %103
  %105 = icmp ult i64 %100, %104
  br i1 %105, label %106, label %96

106:                                              ; preds = %96, %59
  %107 = phi i64 [ %86, %59 ], [ %101, %96 ]
  %108 = phi i64 [ %93, %59 ], [ %100, %96 ]
  %109 = getelementptr %struct.vdso_data, ptr %3, i32 0, i32 6, i32 0, i32 1, i32 1
  store i64 %108, ptr %109, align 8
  %110 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 13
  %111 = load i64, ptr %110, align 8
  %112 = add i64 %111, %107
  %113 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 13, i32 1
  %114 = load i32, ptr %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load i32, ptr %23, align 4
  %117 = zext i32 %116 to i64
  %118 = shl i64 %115, %117
  %119 = add i64 %118, %108
  %120 = getelementptr %struct.vdso_data, ptr %3, i32 0, i32 6, i32 0, i32 7
  store i64 %112, ptr %120, align 8
  %121 = load i32, ptr %23, align 4
  %122 = zext i32 %121 to i64
  %123 = shl i64 1000000000, %122
  %124 = icmp ult i64 %119, %123
  br i1 %124, label %135, label %125

125:                                              ; preds = %125, %106
  %126 = phi i64 [ %133, %125 ], [ %123, %106 ]
  %127 = phi i64 [ %129, %125 ], [ %119, %106 ]
  %128 = phi i64 [ %130, %125 ], [ %112, %106 ]
  %129 = sub i64 %127, %126
  %130 = add i64 %128, 1
  store i64 %130, ptr %120, align 8
  %131 = load i32, ptr %23, align 4
  %132 = zext i32 %131 to i64
  %133 = shl i64 1000000000, %132
  %134 = icmp ult i64 %129, %133
  br i1 %134, label %135, label %125

135:                                              ; preds = %125, %106
  %136 = phi i64 [ %119, %106 ], [ %129, %125 ]
  %137 = getelementptr %struct.vdso_data, ptr %3, i32 0, i32 6, i32 0, i32 7, i32 1
  store i64 %136, ptr %137, align 8
  %138 = getelementptr %struct.vdso_data, ptr %3, i32 1, i32 6, i32 0, i32 4
  %139 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 12
  %140 = load i64, ptr %139, align 8
  store i64 %140, ptr %138, align 8
  %141 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 1, i32 5
  %142 = load i64, ptr %141, align 8
  %143 = getelementptr %struct.vdso_data, ptr %3, i32 1, i32 6, i32 0, i32 4, i32 1
  store i64 %142, ptr %143, align 8
  %144 = getelementptr %struct.vdso_data, ptr %3, i32 0, i32 6, i32 0, i32 11
  %145 = load i64, ptr %15, align 8
  %146 = getelementptr inbounds %struct.timekeeper, ptr %0, i32 0, i32 8
  %147 = load i32, ptr %146, align 8
  %148 = sext i32 %147 to i64
  %149 = add i64 %145, %148
  store i64 %149, ptr %144, align 8
  %150 = load i64, ptr %17, align 8
  %151 = getelementptr %struct.vdso_data, ptr %3, i32 0, i32 6, i32 0, i32 11, i32 1
  store i64 %150, ptr %151, align 8
  br label %152

152:                                              ; preds = %135, %50
  call void asm sideeffect "dmb ishst", "~{memory}"() #3, !srcloc !10
  %153 = load i32, ptr %3, align 8
  %154 = add i32 %153, 1
  store volatile i32 %154, ptr %3, align 8
  %155 = load i32, ptr %6, align 8
  %156 = add i32 %155, 1
  store volatile i32 %156, ptr %6, align 8
  %157 = load ptr, ptr @mem_map, align 4
  %158 = ptrtoint ptr %3 to i32
  %159 = add i32 %158, 1073741824
  %160 = lshr i32 %159, 12
  %161 = getelementptr %struct.page, ptr %157, i32 %160
  call void @flush_dcache_page(ptr noundef %161) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_vsyscall_tz() local_unnamed_addr #0 {
  %1 = load ptr, ptr @vdso_data, align 4
  %2 = load i32, ptr @sys_tz, align 4
  %3 = getelementptr inbounds %struct.vdso_data, ptr %1, i32 0, i32 7
  store i32 %2, ptr %3, align 8
  %4 = load i32, ptr getelementptr inbounds (%struct.timezone, ptr @sys_tz, i32 0, i32 1), align 4
  %5 = getelementptr inbounds %struct.vdso_data, ptr %1, i32 0, i32 8
  store i32 %4, ptr %5, align 4
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %1 to i32
  %8 = add i32 %7, 1073741824
  %9 = lshr i32 %8, 12
  %10 = getelementptr %struct.page, ptr %6, i32 %9
  tail call void @flush_dcache_page(ptr noundef %10) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vdso_update_begin() local_unnamed_addr #0 {
  %1 = load ptr, ptr @vdso_data, align 4
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #3
  %3 = load i32, ptr %1, align 8
  %4 = add i32 %3, 1
  store volatile i32 %4, ptr %1, align 8
  %5 = getelementptr %struct.vdso_data, ptr %1, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 1
  store volatile i32 %7, ptr %5, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #3, !srcloc !8
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vdso_update_end(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @vdso_data, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #3, !srcloc !10
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, 1
  store volatile i32 %4, ptr %2, align 8
  %5 = getelementptr %struct.vdso_data, ptr %2, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 1
  store volatile i32 %7, ptr %5, align 8
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %2 to i32
  %10 = add i32 %9, 1073741824
  %11 = lshr i32 %10, 12
  %12 = getelementptr %struct.page, ptr %8, i32 %11
  tail call void @flush_dcache_page(ptr noundef %12) #3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!8 = !{i64 2150437915}
!9 = !{i64 833297}
!10 = !{i64 2150438258}
