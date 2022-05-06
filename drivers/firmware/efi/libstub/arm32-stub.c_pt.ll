; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/arm32-stub.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/arm32-stub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.guid_t = type { [16 x i8] }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_arm_entry_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"\016Entering in %s mode with MMU %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"HYP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"SVC\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@efi_system_table = external hidden local_unnamed_addr global ptr, align 4
@efi_entry_state = hidden global ptr null, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"\013ERROR: allocate_pool() failed\0A\00", align 1
@cpu_state_guid = internal global %struct.guid_t { [16 x i8] c"\AA\E4y\EF=<\89I\B9\02\07\A9C\E5P\D2" }, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"\013ERROR: install_configuration_table() failed\0A\00", align 1
@screen_info_guid = internal global %struct.guid_t { [16 x i8] c"\0A\C2?\E0\DC\85n@\B9\0EJ\B5\027\1D\95" }, align 4
@.str.7 = private unnamed_addr constant [61 x i8] c"\013ERROR: Unable to allocate memory for uncompressed kernel.\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"\016Free memory starts at 0x%lx, setting kernel_base to 0x%lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"\017DEBUG: image addr == 0x%lx, reserve_addr == 0x%lx\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @check_platform_features() local_unnamed_addr #0 {
  %1 = tail call i32 asm "mrs $0, cpsr", "=r"() #3, !srcloc !9
  %2 = and i32 %1, 31
  %3 = icmp eq i32 %2, 26
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 asm "mrc p15, 4, $0, c1, c0, 0", "=r"() #3, !srcloc !10
  br label %8

6:                                                ; preds = %0
  %7 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0", "=r"() #3, !srcloc !11
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ @.str.1, %4 ], [ @.str.2, %6 ]
  %10 = phi i32 [ %5, %4 ], [ %7, %6 ]
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @.str.4, ptr @.str.3
  %14 = tail call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str, ptr noundef nonnull %9, ptr noundef nonnull %13) #4
  %15 = load ptr, ptr @efi_system_table, align 4
  %16 = getelementptr inbounds %struct.anon.1, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(i32 noundef 2, i32 noundef 16, ptr noundef nonnull @efi_entry_state) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %8
  %23 = tail call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.5) #4
  br label %44

24:                                               ; preds = %8
  %25 = load ptr, ptr @efi_entry_state, align 4
  store i32 %1, ptr %25, align 4
  %26 = load ptr, ptr @efi_entry_state, align 4
  %27 = getelementptr inbounds %struct.efi_arm_entry_state, ptr %26, i32 0, i32 1
  store i32 %10, ptr %27, align 4
  %28 = load ptr, ptr @efi_system_table, align 4
  %29 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 22
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef nonnull @cpu_state_guid, ptr noundef %26) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %24
  %36 = tail call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.6) #4
  %37 = load ptr, ptr @efi_system_table, align 4
  %38 = getelementptr inbounds %struct.anon.1, ptr %37, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.anon, ptr %39, i32 0, i32 7
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr @efi_entry_state, align 4
  %43 = tail call i32 %41(ptr noundef %42) #4
  br label %44

44:                                               ; preds = %35, %24, %22
  %45 = phi i32 [ %20, %22 ], [ %33, %35 ], [ 0, %24 ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden void @efi_handle_post_ebs_state() local_unnamed_addr #0 {
  %1 = load ptr, ptr @efi_entry_state, align 4
  %2 = getelementptr inbounds %struct.efi_arm_entry_state, ptr %1, i32 0, i32 2
  %3 = tail call i32 asm "mrs $0, cpsr", "=r"() #3, !srcloc !9
  store i32 %3, ptr %2, align 4
  %4 = and i32 %3, 31
  %5 = icmp eq i32 %4, 26
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = tail call i32 asm "mrc p15, 4, $0, c1, c0, 0", "=r"() #3, !srcloc !10
  br label %10

8:                                                ; preds = %0
  %9 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0", "=r"() #3, !srcloc !11
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %9, %8 ], [ %7, %6 ]
  %12 = getelementptr inbounds %struct.efi_arm_entry_state, ptr %1, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden ptr @alloc_screen_info() local_unnamed_addr #0 {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  store ptr null, ptr %1, align 4, !annotation !12
  %2 = load ptr, ptr @efi_system_table, align 4
  %3 = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 %6(i32 noundef 6, i32 noundef 64, ptr noundef nonnull %1) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %0
  %10 = load ptr, ptr @efi_system_table, align 4
  %11 = getelementptr inbounds %struct.anon.1, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 22
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %1, align 4
  %16 = call i32 %14(ptr noundef nonnull @screen_info_guid, ptr noundef %15) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load ptr, ptr %1, align 4
  br label %28

20:                                               ; preds = %9
  %21 = load ptr, ptr @efi_system_table, align 4
  %22 = getelementptr inbounds %struct.anon.1, ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %1, align 4
  %27 = call i32 %25(ptr noundef %26) #4
  br label %28

28:                                               ; preds = %20, %18, %0
  %29 = phi ptr [ %19, %18 ], [ null, %20 ], [ null, %0 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden void @free_screen_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @efi_system_table, align 4
  %5 = getelementptr inbounds %struct.anon.1, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef nonnull @screen_info_guid, ptr noundef null) #4
  %10 = load ptr, ptr @efi_system_table, align 4
  %11 = getelementptr inbounds %struct.anon.1, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 %14(ptr noundef nonnull %0) #4
  br label %16

16:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @handle_kernel_image(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !12
  %7 = call i32 @efi_low_alloc_above(i32 noundef 37748736, i32 noundef 4096, ptr noundef nonnull %6, i32 noundef 0) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.7) #4
  br label %59

11:                                               ; preds = %5
  %12 = load i32, ptr %6, align 4
  %13 = and i32 %12, 4194303
  %14 = icmp ugt i32 %13, 2109440
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = add i32 %12, -1
  %17 = or i32 %16, 4194303
  %18 = add i32 %17, 1
  %19 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.8, i32 noundef %12, i32 noundef %18) #4
  %20 = load i32, ptr %6, align 4
  br label %23

21:                                               ; preds = %11
  %22 = and i32 %12, -4194304
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi i32 [ %20, %15 ], [ %12, %21 ]
  %25 = phi i32 [ %18, %15 ], [ %22, %21 ]
  %26 = add i32 %25, 2109440
  store i32 %26, ptr %2, align 4
  store i32 33554432, ptr %3, align 4
  %27 = load i32, ptr %2, align 4
  %28 = icmp ugt i32 %27, %24
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load ptr, ptr @efi_system_table, align 4
  %31 = getelementptr inbounds %struct.anon.1, ptr %30, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = zext i32 %24 to i64
  %36 = sub i32 %27, %24
  %37 = lshr i32 %36, 12
  %38 = call i32 %34(i64 noundef %35, i32 noundef %37) #4
  %39 = load i32, ptr %2, align 4
  %40 = load i32, ptr %6, align 4
  %41 = sub i32 4194304, %39
  %42 = add i32 %41, %40
  %43 = lshr i32 %42, 12
  br label %44

44:                                               ; preds = %29, %23
  %45 = phi i32 [ %39, %29 ], [ %27, %23 ]
  %46 = phi i32 [ %43, %29 ], [ 1024, %23 ]
  %47 = load ptr, ptr @efi_system_table, align 4
  %48 = getelementptr inbounds %struct.anon.1, ptr %47, i32 0, i32 10
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.anon, ptr %49, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = add i32 %45, 33554432
  %53 = zext i32 %52 to i64
  %54 = call i32 %51(i64 noundef %53, i32 noundef %46) #4
  %55 = add i32 %25, 2129920
  store i32 %55, ptr %0, align 4
  store i32 0, ptr %1, align 4
  %56 = load i32, ptr %0, align 4
  %57 = load i32, ptr %2, align 4
  %58 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.9, i32 noundef %56, i32 noundef %57) #4
  br label %59

59:                                               ; preds = %44, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_low_alloc_above(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readnone }
attributes #4 = { nobuiltin nounwind optsize "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 344}
!10 = !{i64 419}
!11 = !{i64 476}
!12 = !{!"auto-init"}
