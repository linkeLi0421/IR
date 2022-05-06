; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/random.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/random.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.guid_t = type { [16 x i8] }
%struct.anon.3 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon.1 = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.linux_efi_random_seed = type { i32, [0 x i8] }

@efi_system_table = external hidden local_unnamed_addr global ptr, align 4
@__const.efi_random_get_seed.rng_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\A5\BCR1\DE\EA=C\86.\C0\1C\DC)\1FD" }, align 4
@__const.efi_random_get_seed.rng_algo_raw = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\D7v1\E4\E8\B6'H\B7\84\7F\FD\C4\B6\85a" }, align 4
@__const.efi_random_get_seed.rng_table_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\BC\E5\E1\1C\EB|\F2B\81\E5\8A\AD\F1\80\F5{" }, align 4

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_get_random_bytes(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.guid_t, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_random_get_seed.rng_proto, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store ptr null, ptr %4, align 4
  %5 = load ptr, ptr @efi_system_table, align 4
  %6 = getelementptr inbounds %struct.anon.3, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.anon.1, ptr %7, i32 0, i32 38
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %4) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(ptr noundef %13, ptr noundef null, i32 noundef %0, ptr noundef %1) #4
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i32 [ %16, %12 ], [ %10, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #3
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_random_get_seed() local_unnamed_addr #0 {
  %1 = alloca %struct.guid_t, align 4
  %2 = alloca %struct.guid_t, align 4
  %3 = alloca %struct.guid_t, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_random_get_seed.rng_proto, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_random_get_seed.rng_algo_raw, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_random_get_seed.rng_table_guid, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store ptr null, ptr %5, align 4
  %6 = load ptr, ptr @efi_system_table, align 4
  %7 = getelementptr inbounds %struct.anon.3, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 38
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 %10(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %4) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %0
  %14 = load ptr, ptr @efi_system_table, align 4
  %15 = getelementptr inbounds %struct.anon.3, ptr %14, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 %18(i32 noundef 6, i32 noundef 68, ptr noundef nonnull %5) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %13
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %25, i32 0, i32 1
  %27 = call i32 %24(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 64, ptr noundef %26) #4
  %28 = icmp eq i32 %27, -2147483645
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.linux_efi_random_seed, ptr %33, i32 0, i32 1
  %35 = call i32 %32(ptr noundef %30, ptr noundef null, i32 noundef 64, ptr noundef %34) #4
  br label %36

36:                                               ; preds = %29, %21
  %37 = phi i32 [ %35, %29 ], [ %27, %21 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load ptr, ptr %5, align 4
  store i32 64, ptr %40, align 4
  %41 = load ptr, ptr @efi_system_table, align 4
  %42 = getelementptr inbounds %struct.anon.3, ptr %41, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.anon.1, ptr %43, i32 0, i32 22
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %5, align 4
  %47 = call i32 %45(ptr noundef nonnull %3, ptr noundef %46) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %39, %36
  %50 = phi i32 [ %37, %36 ], [ %47, %39 ]
  %51 = load ptr, ptr @efi_system_table, align 4
  %52 = getelementptr inbounds %struct.anon.3, ptr %51, i32 0, i32 10
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.anon.1, ptr %53, i32 0, i32 7
  %55 = load ptr, ptr %54, align 8
  %56 = load ptr, ptr %5, align 4
  %57 = call i32 %55(ptr noundef %56) #4
  br label %58

58:                                               ; preds = %49, %39, %13, %0
  %59 = phi i32 [ %50, %49 ], [ %11, %0 ], [ %19, %13 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #3
  ret i32 %59
}

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind optsize "no-builtins" }

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
