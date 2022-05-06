; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/tpm.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/tpm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.guid_t = type { [16 x i8] }
%struct.anon.4 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon.2 = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcpa_event = type { i32, i32, [20 x i8], i32, [0 x i8] }
%struct.efi_tcg2_final_events_table = type { i64, i64, [0 x i8] }
%struct.linux_efi_tpm_eventlog = type { i32, i32, i8, [0 x i8] }
%struct.tcg_pcr_event2_head = type { i32, i32, i32, [0 x %struct.tpm_digest] }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.tcg_pcr_event = type { i32, i32, [20 x i8], i32, [0 x i8] }
%struct.tcg_efi_specid_event_algs = type { i16, i16 }

@__const.efi_retrieve_tpm2_eventlog.tcg2_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"lv\7F`Ut\BEB\93\0B\E4\D7m\B2r\0F" }, align 4
@__const.efi_retrieve_tpm2_eventlog.linux_eventlog_guid = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\B0\9Cy\B7\A2\ECCI\96g\1F\AE\07\B7G\FA" }, align 4
@efi_system_table = external hidden local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [50 x i8] c"\013ERROR: Unable to allocate memory for event log\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Spec ID Event03\00", align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden void @efi_retrieve_tpm2_eventlog() local_unnamed_addr #0 {
  %1 = alloca %struct.guid_t, align 4
  %2 = alloca %struct.guid_t, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_retrieve_tpm2_eventlog.tcg2_guid, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_retrieve_tpm2_eventlog.linux_eventlog_guid, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store ptr null, ptr %7, align 4
  %8 = load ptr, ptr @efi_system_table, align 4
  %9 = getelementptr inbounds %struct.anon.4, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.anon.2, ptr %10, i32 0, i32 38
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 %12(ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %7) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %128

15:                                               ; preds = %0
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 %18(ptr noundef %16, i32 noundef 2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6) #7
  %20 = icmp eq i32 %19, 0
  %21 = load i64, ptr %3, align 8
  %22 = icmp ne i64 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %33, label %24

24:                                               ; preds = %15
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 %27(ptr noundef %25, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6) #7
  %29 = icmp eq i32 %28, 0
  %30 = load i64, ptr %3, align 8
  %31 = icmp ne i64 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %37, label %128

33:                                               ; preds = %15
  %34 = trunc i64 %21 to i32
  %35 = load i64, ptr %4, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %63, label %41

37:                                               ; preds = %24
  %38 = trunc i64 %30 to i32
  %39 = load i64, ptr %4, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %63, label %48

41:                                               ; preds = %33
  %42 = trunc i64 %35 to i32
  %43 = inttoptr i32 %42 to ptr
  %44 = inttoptr i32 %34 to ptr
  %45 = call fastcc i32 @__calc_tpm2_event_size(ptr noundef %43, ptr noundef %44) #8
  %46 = load i64, ptr %4, align 8
  %47 = load i64, ptr %3, align 8
  br label %54

48:                                               ; preds = %37
  %49 = trunc i64 %39 to i32
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.tcpa_event, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 32
  br label %54

54:                                               ; preds = %48, %41
  %55 = phi i64 [ %47, %41 ], [ %30, %48 ]
  %56 = phi i64 [ %46, %41 ], [ %39, %48 ]
  %57 = phi i8 [ 2, %41 ], [ 1, %48 ]
  %58 = phi i32 [ %34, %41 ], [ %38, %48 ]
  %59 = phi i32 [ %45, %41 ], [ %53, %48 ]
  %60 = sub i64 %56, %55
  %61 = trunc i64 %60 to i32
  %62 = add i32 %59, %61
  br label %63

63:                                               ; preds = %54, %37, %33
  %64 = phi i32 [ %58, %54 ], [ %34, %33 ], [ %38, %37 ]
  %65 = phi i8 [ %57, %54 ], [ 2, %33 ], [ 1, %37 ]
  %66 = phi i32 [ %62, %54 ], [ 0, %33 ], [ 0, %37 ]
  %67 = load ptr, ptr @efi_system_table, align 4
  %68 = getelementptr inbounds %struct.anon.4, ptr %67, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.anon.2, ptr %69, i32 0, i32 6
  %71 = load ptr, ptr %70, align 4
  %72 = add i32 %66, 12
  %73 = call i32 %71(i32 noundef 2, i32 noundef %72, ptr noundef nonnull %5) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %63
  %76 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str) #7
  br label %128

77:                                               ; preds = %63
  br i1 %23, label %78, label %101

78:                                               ; preds = %77
  %79 = call ptr @get_efi_config_table([4 x i32] [i32 506384534, i32 1112813794, i32 998672829, i32 623114430]) #7
  %80 = icmp eq ptr %79, null
  br i1 %80, label %101, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.efi_tcg2_final_events_table, ptr %79, i32 0, i32 1
  %83 = load i64, ptr %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %81
  %86 = trunc i64 %83 to i32
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = getelementptr i8, ptr %79, i32 16
  br label %90

90:                                               ; preds = %90, %88
  %91 = phi i32 [ %86, %88 ], [ %99, %90 ]
  %92 = phi i32 [ 0, %88 ], [ %98, %90 ]
  %93 = getelementptr i8, ptr %89, i32 %92
  %94 = load i64, ptr %3, align 8
  %95 = trunc i64 %94 to i32
  %96 = inttoptr i32 %95 to ptr
  %97 = call fastcc i32 @__calc_tpm2_event_size(ptr noundef %93, ptr noundef %96) #8
  %98 = add i32 %97, %92
  %99 = add nsw i32 %91, -1
  %100 = icmp ugt i32 %91, 1
  br i1 %100, label %90, label %101

101:                                              ; preds = %90, %85, %81, %78, %77
  %102 = phi i32 [ 0, %81 ], [ 0, %78 ], [ 0, %77 ], [ 0, %85 ], [ %98, %90 ]
  %103 = load ptr, ptr %5, align 4
  %104 = call ptr @memset(ptr noundef %103, i32 noundef 0, i32 noundef %72) #7
  %105 = load ptr, ptr %5, align 4
  store i32 %66, ptr %105, align 4
  %106 = load ptr, ptr %5, align 4
  %107 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %106, i32 0, i32 1
  store i32 %102, ptr %107, align 4
  %108 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %106, i32 0, i32 2
  store i8 %65, ptr %108, align 4
  %109 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %106, i32 0, i32 3
  %110 = inttoptr i32 %64 to ptr
  %111 = call ptr @memcpy(ptr noundef %109, ptr noundef %110, i32 noundef %66) #7
  %112 = load ptr, ptr @efi_system_table, align 4
  %113 = getelementptr inbounds %struct.anon.4, ptr %112, i32 0, i32 10
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.anon.2, ptr %114, i32 0, i32 22
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %5, align 4
  %118 = call i32 %116(ptr noundef nonnull %2, ptr noundef %117) #7
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %101
  %121 = load ptr, ptr @efi_system_table, align 4
  %122 = getelementptr inbounds %struct.anon.4, ptr %121, i32 0, i32 10
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.anon.2, ptr %123, i32 0, i32 7
  %125 = load ptr, ptr %124, align 8
  %126 = load ptr, ptr %5, align 4
  %127 = call i32 %125(ptr noundef %126) #7
  br label %128

128:                                              ; preds = %120, %101, %75, %24, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid optsize uwtable(sync)
define internal fastcc i32 @__calc_tpm2_event_size(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca i16, align 2
  %4 = alloca [20 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  store i16 0, ptr %3, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %4, i8 0, i32 20, i1 false)
  %5 = getelementptr i8, ptr %0, i32 12
  %6 = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %0, i32 0, i32 2
  %7 = load volatile i32, ptr %6, align 1
  %8 = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %0, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 1
  %10 = load i32, ptr %1, align 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %75

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tcg_pcr_event, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 1
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %75

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tcg_pcr_event, ptr %1, i32 0, i32 2
  %18 = call i32 @memcmp(ptr noundef %17, ptr noundef nonnull %4, i32 noundef 20) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tcg_pcr_event, ptr %1, i32 0, i32 4
  %22 = call i32 @memcmp(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef 16) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tcg_pcr_event, ptr %1, i32 1, i32 2, i32 16
  %26 = load i32, ptr %25, align 1
  %27 = icmp ne i32 %26, 0
  %28 = icmp eq i32 %7, %26
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %75

30:                                               ; preds = %24
  %31 = icmp eq i32 %7, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.tcg_pcr_event, ptr %1, i32 1, i32 3
  br label %37

34:                                               ; preds = %59
  %35 = add nuw i32 %38, 1
  %36 = icmp eq i32 %35, %7
  br i1 %36, label %63, label %37

37:                                               ; preds = %34, %32
  %38 = phi i32 [ 0, %32 ], [ %35, %34 ]
  %39 = phi ptr [ %5, %32 ], [ %61, %34 ]
  %40 = call ptr @memcpy(ptr noundef nonnull %3, ptr noundef %39, i32 noundef 2) #7
  %41 = getelementptr i8, ptr %39, i32 2
  %42 = load i32, ptr %25, align 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %37
  %45 = load i16, ptr %3, align 2
  br label %46

46:                                               ; preds = %56, %44
  %47 = phi i32 [ 0, %44 ], [ %57, %56 ]
  %48 = getelementptr [0 x %struct.tcg_efi_specid_event_algs], ptr %33, i32 0, i32 %47
  %49 = load i16, ptr %48, align 1
  %50 = icmp eq i16 %45, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = getelementptr [0 x %struct.tcg_efi_specid_event_algs], ptr %33, i32 0, i32 %47, i32 1
  %53 = load i16, ptr %52, align 1
  %54 = zext i16 %53 to i32
  %55 = getelementptr i8, ptr %41, i32 %54
  br label %59

56:                                               ; preds = %46
  %57 = add nuw i32 %47, 1
  %58 = icmp eq i32 %57, %42
  br i1 %58, label %75, label %46

59:                                               ; preds = %51, %37
  %60 = phi i32 [ %47, %51 ], [ 0, %37 ]
  %61 = phi ptr [ %55, %51 ], [ %41, %37 ]
  %62 = icmp eq i32 %60, %42
  br i1 %62, label %75, label %34

63:                                               ; preds = %34, %30
  %64 = phi ptr [ %5, %30 ], [ %61, %34 ]
  %65 = getelementptr i8, ptr %64, i32 4
  %66 = load i32, ptr %64, align 1
  %67 = getelementptr i8, ptr %65, i32 %66
  %68 = ptrtoint ptr %67 to i32
  %69 = ptrtoint ptr %0 to i32
  %70 = sub i32 %68, %69
  %71 = icmp eq i32 %9, 0
  %72 = icmp eq i32 %66, 0
  %73 = select i1 %71, i1 %72, i1 false
  %74 = select i1 %73, i32 0, i32 %70
  br label %75

75:                                               ; preds = %63, %59, %56, %24, %20, %16, %12, %2
  %76 = phi i32 [ 0, %16 ], [ 0, %12 ], [ 0, %2 ], [ 0, %24 ], [ 0, %20 ], [ %74, %63 ], [ 0, %56 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @get_efi_config_table([4 x i32]) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind optsize "no-builtins" }
attributes #8 = { nobuiltin optsize "no-builtins" }

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
!9 = !{!"auto-init"}
