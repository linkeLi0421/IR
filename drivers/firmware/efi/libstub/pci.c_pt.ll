; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/pci.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.guid_t = type { [16 x i8] }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.7 = type { ptr, ptr, %struct.efi_pci_io_protocol_access_t, %struct.efi_pci_io_protocol_access_t, %struct.efi_pci_io_protocol_config_access_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr }
%struct.efi_pci_io_protocol_access_t = type { ptr, ptr }
%struct.efi_pci_io_protocol_config_access_t = type { ptr, ptr }

@__const.efi_pci_disable_bridge_busmaster.pci_proto = private unnamed_addr constant %struct.guid_t { [16 x i8] c"\00\B2\F5L\B8h\A5L\9E\EC\B2>?P\02\9A" }, align 4
@efi_system_table = external hidden local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [44 x i8] c"\013ERROR: Failed to locate PCI I/O handles'\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\013ERROR: Failed to allocate memory for 'pci_handle'\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\013ERROR: Failed to disable PCI busmastering\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden void @efi_pci_disable_bridge_busmaster() local_unnamed_addr #0 {
  %1 = alloca %struct.guid_t, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_pci_disable_bridge_busmaster.pci_proto, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #4
  store i16 0, ptr %4, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #4
  store i16 0, ptr %5, align 2, !annotation !9
  %12 = load ptr, ptr @efi_system_table, align 4
  %13 = getelementptr inbounds %struct.anon.1, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(i32 noundef 2, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %2, ptr noundef null) #5
  switch i32 %17, label %18 [
    i32 -2147483643, label %20
    i32 -2147483634, label %144
    i32 0, label %144
  ]

18:                                               ; preds = %0
  %19 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str) #5
  br label %144

20:                                               ; preds = %0
  %21 = load ptr, ptr @efi_system_table, align 4
  %22 = getelementptr inbounds %struct.anon.1, ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %2, align 4
  %27 = call i32 %25(i32 noundef 2, i32 noundef %26, ptr noundef nonnull %3) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.1) #5
  br label %144

31:                                               ; preds = %20
  %32 = load ptr, ptr @efi_system_table, align 4
  %33 = getelementptr inbounds %struct.anon.1, ptr %32, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.anon, ptr %34, i32 0, i32 20
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %3, align 4
  %38 = call i32 %36(i32 noundef 2, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %2, ptr noundef %37) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, ptr %2, align 4
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %136, label %47

43:                                               ; preds = %31
  %44 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str) #5
  br label %136

45:                                               ; preds = %84
  %46 = icmp ult i32 %86, 4
  br i1 %46, label %136, label %89

47:                                               ; preds = %84, %40
  %48 = phi i32 [ %85, %84 ], [ 0, %40 ]
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr ptr, ptr %49, i32 %48
  %51 = load ptr, ptr %50, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  store i32 0, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  store i32 0, ptr %10, align 4, !annotation !9
  %52 = load ptr, ptr @efi_system_table, align 4
  %53 = getelementptr inbounds %struct.anon.1, ptr %52, i32 0, i32 10
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.anon, ptr %54, i32 0, i32 17
  %56 = load ptr, ptr %55, align 8
  %57 = call i32 %56(ptr noundef %51, ptr noundef nonnull %1, ptr noundef nonnull %6) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %47
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr inbounds %struct.anon.7, ptr %60, i32 0, i32 11
  %62 = load ptr, ptr %61, align 8
  %63 = call i32 %62(ptr noundef %60, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #5
  %64 = icmp ne i32 %63, 0
  %65 = load i32, ptr %8, align 4
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %84, label %68

68:                                               ; preds = %59
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr inbounds %struct.anon.7, ptr %69, i32 0, i32 4
  %71 = load ptr, ptr %70, align 8
  %72 = call i32 %71(ptr noundef %69, i32 noundef 1, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %4) #5
  %73 = icmp ne i32 %72, 0
  %74 = load i16, ptr %4, align 2
  %75 = icmp eq i16 %74, 768
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %68
  %78 = load ptr, ptr @efi_system_table, align 4
  %79 = getelementptr inbounds %struct.anon.1, ptr %78, i32 0, i32 10
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.anon, ptr %80, i32 0, i32 32
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 %82(ptr noundef %51, ptr noundef null, ptr noundef null) #5
  br label %84

84:                                               ; preds = %77, %68, %59, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  %85 = add nuw nsw i32 %48, 1
  %86 = load i32, ptr %2, align 4
  %87 = lshr i32 %86, 2
  %88 = icmp ult i32 %85, %87
  br i1 %88, label %47, label %45

89:                                               ; preds = %131, %45
  %90 = phi i32 [ %132, %131 ], [ 0, %45 ]
  %91 = load ptr, ptr %3, align 4
  %92 = getelementptr ptr, ptr %91, i32 %90
  %93 = load ptr, ptr %92, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #4
  store ptr null, ptr %11, align 4, !annotation !9
  %94 = load ptr, ptr @efi_system_table, align 4
  %95 = getelementptr inbounds %struct.anon.1, ptr %94, i32 0, i32 10
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.anon, ptr %96, i32 0, i32 17
  %98 = load ptr, ptr %97, align 8
  %99 = call i32 %98(ptr noundef %93, ptr noundef nonnull %1, ptr noundef nonnull %11) #5
  %100 = icmp eq i32 %99, 0
  %101 = load ptr, ptr %11, align 4
  %102 = icmp ne ptr %101, null
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %104, label %131

104:                                              ; preds = %89
  %105 = getelementptr inbounds %struct.anon.7, ptr %101, i32 0, i32 4
  %106 = load ptr, ptr %105, align 8
  %107 = call i32 %106(ptr noundef nonnull %101, i32 noundef 1, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %4) #5
  %108 = icmp ne i32 %107, 0
  %109 = load i16, ptr %4, align 2
  %110 = icmp ne i16 %109, 1540
  %111 = select i1 %108, i1 true, i1 %110
  br i1 %111, label %131, label %112

112:                                              ; preds = %104
  %113 = load ptr, ptr %11, align 4
  %114 = getelementptr inbounds %struct.anon.7, ptr %113, i32 0, i32 4
  %115 = load ptr, ptr %114, align 8
  %116 = call i32 %115(ptr noundef %113, i32 noundef 1, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %5) #5
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %112
  %119 = load i16, ptr %5, align 2
  %120 = and i16 %119, 4
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %118
  %123 = and i16 %119, -5
  store i16 %123, ptr %5, align 2
  %124 = load ptr, ptr %11, align 4
  %125 = getelementptr inbounds %struct.anon.7, ptr %124, i32 0, i32 4, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = call i32 %126(ptr noundef %124, i32 noundef 1, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %5) #5
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %122
  %130 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.2) #5
  br label %131

131:                                              ; preds = %129, %122, %118, %112, %104, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #4
  %132 = add nuw nsw i32 %90, 1
  %133 = load i32, ptr %2, align 4
  %134 = lshr i32 %133, 2
  %135 = icmp ult i32 %132, %134
  br i1 %135, label %89, label %136

136:                                              ; preds = %131, %45, %43, %40
  %137 = load ptr, ptr @efi_system_table, align 4
  %138 = getelementptr inbounds %struct.anon.1, ptr %137, i32 0, i32 10
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.anon, ptr %139, i32 0, i32 7
  %141 = load ptr, ptr %140, align 8
  %142 = load ptr, ptr %3, align 4
  %143 = call i32 %141(ptr noundef %142) #5
  br label %144

144:                                              ; preds = %136, %29, %18, %0, %0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind optsize "no-builtins" }

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
