; ModuleID = '/llk/IR/drivers/firmware/efi/memattr.c_pt.bc'
source_filename = "../drivers/firmware/efi/memattr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.efi_memory_attributes_table_t = type { i32, i32, i32, i32, [0 x %struct.efi_memory_desc_t] }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }

@efi_mem_attr_table = dso_local local_unnamed_addr global i32 -1, section ".data..ro_after_init", align 4
@.str = private unnamed_addr constant [67 x i8] c"\013efi: memattr: Failed to map EFI Memory Attributes table @ 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"\014efi: memattr: Unexpected EFI Memory Attributes table version %d\0A\00", align 1
@tbl_size = internal unnamed_addr global i32 0, section ".init.data", align 4
@efi = external dso_local global %struct.efi, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"drivers/firmware/efi/memattr.c\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"\016efi: memattr: Processing EFI Memory Attributes table:\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\016efi: memattr: %s 0x%012llx-0x%012llx %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"\013efi: memattr: Error updating mappings, skipping subsequent md's\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"\014efi: memattr: Entry type should be RuntimeServiceCode/Data\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"\014efi: memattr: Entry covers multiple EFI memory map regions\0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"\014efi: memattr: Entry type deviates from EFI memory map region type\0A\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"\014efi: memattr: No matching entry found in the EFI memory map\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @efi_memattr_init() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @efi_mem_attr_table, align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %24, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @early_memremap(i32 noundef %1, i32 noundef 16) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i32, ptr @efi_mem_attr_table, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %7) #7
  br label %24

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 8
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %10) #7
  br label %23

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.efi_memory_attributes_table_t, ptr %4, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.efi_memory_attributes_table_t, ptr %4, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = mul i32 %18, %16
  %20 = add i32 %19, 16
  store i32 %20, ptr @tbl_size, align 4
  %21 = load i32, ptr @efi_mem_attr_table, align 4
  %22 = tail call i32 @memblock_reserve(i32 noundef %21, i32 noundef %20) #6
  tail call void @_set_bit(i32 noundef 10, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26)) #6
  br label %23

23:                                               ; preds = %14, %12
  tail call void @early_memunmap(ptr noundef nonnull %4, i32 noundef 16) #6
  br label %24

24:                                               ; preds = %23, %6, %0
  %25 = phi i32 [ 0, %23 ], [ -12, %6 ], [ 0, %0 ]
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @early_memremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_memunmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @efi_memattr_apply_permissions(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.efi_memory_desc_t, align 8
  %4 = alloca [64 x i8], align 1
  %5 = load i32, ptr @tbl_size, align 4
  %6 = icmp ult i32 %5, 17
  br i1 %6, label %128, label %7

7:                                                ; preds = %2
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 143, i32 noundef 9, ptr noundef null) #6
  br label %128

12:                                               ; preds = %7
  %13 = load i32, ptr @efi_mem_attr_table, align 4
  %14 = tail call ptr @memremap(i32 noundef %13, i32 noundef %5, i32 noundef 1) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, ptr @efi_mem_attr_table, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %17) #7
  br label %128

19:                                               ; preds = %12
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.efi_memory_attributes_table_t, ptr %14, i32 0, i32 1
  %27 = getelementptr inbounds %struct.efi_memory_attributes_table_t, ptr %14, i32 0, i32 4
  %28 = getelementptr inbounds %struct.efi_memory_attributes_table_t, ptr %14, i32 0, i32 2
  %29 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %3, i32 0, i32 3
  %30 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %3, i32 0, i32 4
  %31 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %3, i32 0, i32 2
  %32 = load i32, ptr %26, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %126, label %34

34:                                               ; preds = %122, %25
  %35 = phi i32 [ %123, %122 ], [ 0, %25 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !9
  %36 = load i32, ptr %28, align 8
  %37 = mul i32 %36, %35
  %38 = getelementptr i8, ptr %27, i32 %37
  %39 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %38, i32 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %38, i32 0, i32 4
  %42 = load i64, ptr %41, align 8
  %43 = shl i64 %42, 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef align 8 dereferenceable(40) %38, i32 40, i1 false) #6
  %44 = load i32, ptr %38, align 8
  %45 = add i32 %44, -5
  %46 = icmp ult i32 %45, 2
  br i1 %46, label %47, label %95

47:                                               ; preds = %34
  %48 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  %49 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %50 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  %51 = icmp ne ptr %48, null
  %52 = getelementptr i8, ptr %48, i32 %49
  %53 = icmp ule ptr %52, %50
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %95

55:                                               ; preds = %83, %47
  %56 = phi ptr [ %84, %83 ], [ %48, %47 ]
  %57 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %56, i32 0, i32 2
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %56, i32 0, i32 4
  %60 = load i64, ptr %59, align 8
  %61 = shl i64 %60, 12
  %62 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %56, i32 0, i32 5
  %63 = load i64, ptr %62, align 8
  %64 = icmp sgt i64 %63, -1
  br i1 %64, label %83, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %56, i32 0, i32 3
  %67 = load i64, ptr %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = icmp eq i64 %58, 0
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %65
  %72 = icmp uge i64 %40, %58
  %73 = sub i64 %40, %58
  %74 = icmp ult i64 %73, %61
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = add i64 %61, %58
  %78 = add i64 %43, %40
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %95, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %56, align 8
  %82 = icmp eq i32 %81, %44
  br i1 %82, label %89, label %95

83:                                               ; preds = %71, %55
  %84 = getelementptr i8, ptr %56, i32 %49
  %85 = icmp ne ptr %84, null
  %86 = getelementptr i8, ptr %84, i32 %49
  %87 = icmp ule ptr %86, %50
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %55, label %95

89:                                               ; preds = %80
  %90 = add i64 %67, %73
  store i64 %90, ptr %29, align 8
  %91 = load i64, ptr %30, align 8
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %93 = and i32 %92, 256
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %117, label %108

95:                                               ; preds = %83, %80, %76, %65, %47, %34
  %96 = phi ptr [ @.str.8, %34 ], [ @.str.9, %76 ], [ @.str.10, %80 ], [ @.str.11, %47 ], [ @.str.11, %83 ], [ @.str.11, %65 ]
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %96) #7
  %98 = load i64, ptr %30, align 8
  %99 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %100 = trunc i64 %98 to i32
  %101 = shl i32 %100, 12
  %102 = load i64, ptr %31, align 8
  %103 = zext i32 %101 to i64
  %104 = add nsw i64 %103, -1
  %105 = add i64 %104, %102
  %106 = call ptr @efi_md_typeattr_format(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull %3) #7
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i64 noundef %102, i64 noundef %105, ptr noundef %106) #7
  br label %122

108:                                              ; preds = %89
  %109 = trunc i64 %91 to i32
  %110 = shl i32 %109, 12
  %111 = load i64, ptr %31, align 8
  %112 = zext i32 %110 to i64
  %113 = add nsw i64 %112, -1
  %114 = add i64 %113, %111
  %115 = call ptr @efi_md_typeattr_format(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull %3) #7
  %116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i64 noundef %111, i64 noundef %114, ptr noundef %115) #7
  br label %117

117:                                              ; preds = %108, %89
  %118 = call i32 %1(ptr noundef %0, ptr noundef nonnull %3) #6
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  br label %126

122:                                              ; preds = %117, %95
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  %123 = add i32 %35, 1
  %124 = load i32, ptr %26, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %34, label %126

126:                                              ; preds = %122, %120, %25
  %127 = phi i32 [ %118, %120 ], [ 0, %25 ], [ 0, %122 ]
  call void @memunmap(ptr noundef nonnull %14) #6
  br label %128

128:                                              ; preds = %126, %16, %11, %2
  %129 = phi i32 [ 0, %11 ], [ %127, %126 ], [ -12, %16 ], [ 0, %2 ]
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @efi_md_typeattr_format(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{!"auto-init"}
