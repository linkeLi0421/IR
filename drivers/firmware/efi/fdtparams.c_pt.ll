; ModuleID = '/llk/IR/drivers/firmware/efi/fdtparams.c_pt.bc'
source_filename = "../drivers/firmware/efi/fdtparams.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.0 = type { [17 x i8], [5 x [26 x i8]] }
%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.anon = type { ptr, i32 }
%struct.efi_memory_map_data = type { i32, i32, i32, i32, i32 }

@initial_boot_params = external dso_local local_unnamed_addr global ptr, align 4
@dt_params = internal constant [1 x %struct.anon.0] [%struct.anon.0 { [17 x i8] c"/chosen\00\00\00\00\00\00\00\00\00\00", [5 x [26 x i8]] [[26 x i8] c"linux,uefi-system-table\00\00\00", [26 x i8] c"linux,uefi-mmap-start\00\00\00\00\00", [26 x i8] c"linux,uefi-mmap-size\00\00\00\00\00\00", [26 x i8] c"linux,uefi-mmap-desc-size\00", [26 x i8] c"linux,uefi-mmap-desc-ver\00\00"] }], section ".init.rodata", align 1
@.str = private unnamed_addr constant [47 x i8] c"\016efi: Getting UEFI parameters from %s in DT:\0A\00", align 1
@name = internal constant [5 x [22 x i8]] [[22 x i8] c"System Table         \00", [22 x i8] c"MemMap Address       \00", [22 x i8] c"MemMap Size          \00", [22 x i8] c"MemMap Desc. Size    \00", [22 x i8] c"MemMap Desc. Version \00"], section ".init.rodata", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\013efi: Can't find property '%s' in DT!\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\016efi: UEFI not found.\0A\00", align 1
@efi = external dso_local global %struct.efi, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"\016efi:   %s: 0x%0*llx\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i64 @efi_get_fdt_params(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca [5 x %struct.anon], align 4
  %4 = load ptr, ptr @initial_boot_params, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #5
  store ptr %2, ptr %3, align 4
  %5 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  store i32 4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %3, i32 1
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %3, i32 1, i32 1
  store i32 4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %3, i32 2
  %9 = getelementptr inbounds %struct.efi_memory_map_data, ptr %0, i32 0, i32 1
  store ptr %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.anon, ptr %3, i32 2, i32 1
  store i32 4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %3, i32 3
  %12 = getelementptr inbounds %struct.efi_memory_map_data, ptr %0, i32 0, i32 3
  store ptr %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %3, i32 3, i32 1
  store i32 4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %3, i32 4
  %15 = getelementptr inbounds %struct.efi_memory_map_data, ptr %0, i32 0, i32 2
  store ptr %15, ptr %14, align 4
  %16 = getelementptr inbounds %struct.anon, ptr %3, i32 4, i32 1
  store i32 4, ptr %16, align 4
  %17 = icmp eq ptr %4, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %1
  %19 = call i32 @fdt_path_offset(ptr noundef nonnull %4, ptr noundef nonnull @dt_params) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %18
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @dt_params) #6
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds [5 x %struct.anon], ptr %3, i32 0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = call fastcc i32 @efi_get_fdt_prop(ptr noundef nonnull %4, i32 noundef %19, ptr noundef getelementptr inbounds ([1 x %struct.anon.0], ptr @dt_params, i32 0, i32 0, i32 1, i32 0), ptr noundef nonnull @name, ptr noundef nonnull %2, i32 noundef %29) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %40, %27
  %33 = phi ptr [ getelementptr inbounds ([1 x %struct.anon.0], ptr @dt_params, i32 0, i32 0, i32 1, i32 0), %27 ], [ %43, %40 ]
  br i1 %31, label %34, label %52

34:                                               ; preds = %32
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %33) #6
  br label %54

36:                                               ; preds = %40, %27
  %37 = phi i32 [ %38, %40 ], [ 0, %27 ]
  %38 = add nuw nsw i32 %37, 1
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr [5 x %struct.anon], ptr %3, i32 0, i32 %38
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr [1 x %struct.anon.0], ptr @dt_params, i32 0, i32 0, i32 1, i32 %38
  %44 = getelementptr [5 x [22 x i8]], ptr @name, i32 0, i32 %38
  %45 = getelementptr [5 x %struct.anon], ptr %3, i32 0, i32 %38, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = call fastcc i32 @efi_get_fdt_prop(ptr noundef nonnull %4, i32 noundef %19, ptr noundef %43, ptr noundef %44, ptr noundef %42, i32 noundef %46) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %36, label %32

49:                                               ; preds = %36
  %50 = load i32, ptr %2, align 4
  %51 = zext i32 %50 to i64
  br label %54

52:                                               ; preds = %32, %18
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %54

54:                                               ; preds = %52, %49, %34, %1
  %55 = phi i64 [ 0, %52 ], [ %51, %49 ], [ 0, %1 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i64 %55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fdt_path_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @efi_get_fdt_prop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) unnamed_addr #0 section ".init.text" {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = call ptr @fdt_getprop(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %7) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %7, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, ptr %8, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14) #5
  %16 = zext i32 %15 to i64
  br label %20

17:                                               ; preds = %10
  %18 = load i64, ptr %8, align 1
  %19 = call i64 @llvm.bswap.i64(i64 %18) #5
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i64 [ %16, %13 ], [ %19, %17 ]
  %22 = icmp eq i32 %5, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i64 %21, ptr %4, align 8
  br label %27

24:                                               ; preds = %20
  %25 = call i64 @llvm.umin.i64(i64 %21, i64 4294967295)
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %4, align 4
  br label %27

27:                                               ; preds = %24, %23
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = shl i32 %5, 1
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %3, i32 noundef %32, i64 noundef %21) #6
  br label %34

34:                                               ; preds = %31, %27, %6
  %35 = phi i32 [ 1, %6 ], [ 0, %31 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fdt_getprop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { cold }

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
