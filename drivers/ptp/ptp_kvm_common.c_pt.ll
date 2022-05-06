; ModuleID = '/llk/IR/drivers/ptp/ptp_kvm_common.c_pt.bc'
source_filename = "../drivers/ptp/ptp_kvm_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kvm_ptp_clock = type { ptr, %struct.ptp_clock_info }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.system_counterval_t = type { i64, ptr }

@kvm_ptp_clock = internal global %struct.kvm_ptp_clock zeroinitializer, align 4
@__initcall__kmod_ptp_kvm__263_153_ptp_kvm_init6 = internal global ptr @ptp_kvm_init, section ".initcall6.init", align 4
@__exitcall_ptp_kvm_exit = internal global ptr @ptp_kvm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author264 = internal constant [53 x i8] c"ptp_kvm.author=Marcelo Tosatti <mtosatti@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [45 x i8] c"ptp_kvm.description=PTP clock using KVMCLOCK\00", section ".modinfo", align 1
@__UNIQUE_ID_file266 = internal constant [33 x i8] c"ptp_kvm.file=drivers/ptp/ptp_kvm\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [20 x i8] c"ptp_kvm.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [29 x i8] c"\013fail to initialize ptp_kvm\00", align 1
@ptp_kvm_caps = internal unnamed_addr constant %struct.ptp_clock_info { ptr null, [32 x i8] c"KVM virtual PTP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @ptp_kvm_adjfreq, ptr null, ptr @ptp_kvm_adjtime, ptr @ptp_kvm_gettime, ptr null, ptr @ptp_kvm_getcrosststamp, ptr @ptp_kvm_settime, ptr @ptp_kvm_enable, ptr null, ptr null }, align 4
@kvm_ptp_lock = internal global %struct.spinlock zeroinitializer, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_ptp_kvm_exit, ptr @__initcall__kmod_ptp_kvm__263_153_ptp_kvm_init6, ptr @ptp_kvm_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ptp_kvm_exit() #0 section ".exit.text" {
  %1 = load ptr, ptr @kvm_ptp_clock, align 4
  %2 = tail call i32 @ptp_clock_unregister(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ptp_kvm_init() #0 section ".init.text" {
  %1 = tail call i32 @kvm_arch_ptp_init() #8
  switch i32 %1, label %2 [
    i32 0, label %4
    i32 -95, label %9
  ]

2:                                                ; preds = %0
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %9

4:                                                ; preds = %0
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(108) getelementptr inbounds (%struct.kvm_ptp_clock, ptr @kvm_ptp_clock, i32 0, i32 1), ptr noundef nonnull align 4 dereferenceable(108) @ptp_kvm_caps, i32 108, i1 false)
  %5 = tail call ptr @ptp_clock_register(ptr noundef getelementptr inbounds (%struct.kvm_ptp_clock, ptr @kvm_ptp_clock, i32 0, i32 1), ptr noundef null) #8
  store ptr %5, ptr @kvm_ptp_clock, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %5 to i32
  %8 = select i1 %6, i32 %7, i32 0
  br label %9

9:                                                ; preds = %4, %2, %0
  %10 = phi i32 [ %8, %4 ], [ %1, %0 ], [ %1, %2 ]
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvm_arch_ptp_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ptp_kvm_adjfreq(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ptp_kvm_adjtime(ptr nocapture noundef readnone %0, i64 noundef %1) #5 {
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_kvm_gettime(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  tail call void @_raw_spin_lock(ptr noundef nonnull @kvm_ptp_lock) #8
  %4 = call i32 @kvm_arch_ptp_get_clock(ptr noundef nonnull %3) #8
  %5 = icmp eq i32 %4, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8
  %6 = load i16, ptr @kvm_ptp_lock, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr @kvm_ptp_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8
  call void asm sideeffect "", "~{memory}"() #8
  br i1 %5, label %8, label %9

8:                                                ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  br label %9

9:                                                ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_kvm_getcrosststamp(ptr nocapture noundef readnone %0, ptr noundef %1) #6 {
  %3 = tail call i32 @get_device_system_crosststamp(ptr noundef nonnull @ptp_kvm_get_time_fn, ptr noundef null, ptr noundef null, ptr noundef %1) #8
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ptp_kvm_settime(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ptp_kvm_enable(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #5 {
  ret i32 -95
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvm_arch_ptp_get_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_device_system_crosststamp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ptp_kvm_get_time_fn(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #6 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store ptr null, ptr %6, align 4, !annotation !8
  tail call void @_raw_spin_lock(ptr noundef nonnull @kvm_ptp_lock) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %7 = call i32 @kvm_arch_ptp_get_crosststamp(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %10 = load i16, ptr @kvm_ptp_lock, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr @kvm_ptp_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %28

12:                                               ; preds = %3
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %13 = load i64, ptr %4, align 8
  store i64 %13, ptr %1, align 8
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.system_counterval_t, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 8
  %16 = load i64, ptr %5, align 8
  %17 = icmp sgt i64 %16, 9223372035
  br i1 %17, label %24, label %18, !prof !16

18:                                               ; preds = %12
  %19 = getelementptr inbounds [2 x i64], ptr %5, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = mul i64 %16, 1000000000
  %22 = and i64 %20, 4294967295
  %23 = add i64 %22, %21
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i64 [ %23, %18 ], [ 9223372036854775807, %12 ]
  store i64 %25, ptr %0, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %26 = load i16, ptr @kvm_ptp_lock, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr @kvm_ptp_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br label %28

28:                                               ; preds = %24, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvm_arch_ptp_get_crosststamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 2153375910}
!10 = !{i64 2149210989}
!11 = !{i64 2149206813}
!12 = !{i64 2149206888, i64 2149206915, i64 2149206962, i64 2149206984, i64 2149207012, i64 2149207032}
!13 = !{i64 2149233992}
!14 = !{i64 2153375958}
!15 = !{i64 2153376006}
!16 = !{!"branch_weights", i32 1, i32 2000}
