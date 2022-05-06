; ModuleID = '/llk/IR/drivers/firmware/efi/efi-init.c_pt.bc'
source_filename = "../drivers/firmware/efi/efi-init.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.efi_config_table_type_t = type { %struct.guid_t, ptr, [16 x i8] }
%struct.guid_t = type { [16 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.efi_memory_map_data = type { i32, i32, i32, i32, i32 }
%struct.efi_arm_entry_state = type { i32, i32, i32, i32 }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Unable to map EFI memory map.\0A\00", align 1
@efi = external dso_local global %struct.efi, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/firmware/efi/efi-init.c\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Unexpected EFI_MEMORY_DESCRIPTOR version %ld\00", align 1
@cpu_state_table = internal global i32 -1, section ".init.data", align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"\014efi: Unable to map CPU entry state table.\0A\00", align 1
@.str.4 = private unnamed_addr constant [101 x i8] c"\014efi: [Firmware Bug]: EFI stub was entered with MMU and Dcache disabled, please fix your firmware!\0A\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"\014efi: [Firmware Bug]: ExitBootServices() returned with MMU and Dcache disabled, please fix your firmware!\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"\016efi: CPSR at EFI stub entry        : 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\016efi: SCTLR at EFI stub entry       : 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"\016efi: CPSR after ExitBootServices() : 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"\016efi: SCTLR after ExitBootServices(): 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\014efi: Unable to map EFI system table.\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\014efi: Unable to map EFI config table array.\0A\00", align 1
@arch_tables = internal constant [3 x %struct.efi_config_table_type_t] [%struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"\0A\C2?\E0\DC\85n@\B9\0EJ\B5\027\1D\95" }, ptr @screen_info_table, [16 x i8] zeroinitializer }, %struct.efi_config_table_type_t { %struct.guid_t { [16 x i8] c"\AA\E4y\EF=<\89I\B9\02\07\A9C\E5P\D2" }, ptr @cpu_state_table, [16 x i8] zeroinitializer }, %struct.efi_config_table_type_t zeroinitializer], section ".init.rodata", align 4
@screen_info_table = internal global i32 -1, section ".init.data", align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"\016efi: Processing EFI memory map:\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"\016efi:   0x%012llx-0x%012llx %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"\013efi: Could not map screen_info config table\0A\00", align 1
@screen_info = external dso_local local_unnamed_addr global %struct.screen_info, align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @efi_init() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.efi_memory_map_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %1, i8 0, i32 20, i1 false), !annotation !8
  %2 = call i64 @efi_get_fdt_params(ptr noundef nonnull %1) #8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %62, label %4

4:                                                ; preds = %0
  %5 = call i32 @efi_memmap_init_early(ptr noundef nonnull %1) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void (ptr, ...) @panic(ptr noundef nonnull @.str) #10
  unreachable

8:                                                ; preds = %4
  %9 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 4), align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %9) #8
  br label %12

12:                                               ; preds = %11, %8
  %13 = call fastcc i32 @uefi_init(i64 noundef %2) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @efi_memmap_unmap() #9
  br label %62

16:                                               ; preds = %12
  call fastcc void @reserve_regions() #11
  call void @early_init_dt_check_for_usable_mem_range() #8
  call void @efi_esrt_init() #9
  %17 = load i32, ptr %1, align 4
  %18 = and i32 %17, -4096
  %19 = getelementptr inbounds %struct.efi_memory_map_data, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %17, 4095
  %22 = add nuw nsw i32 %21, 4095
  %23 = add i32 %22, %20
  %24 = and i32 %23, -4096
  %25 = call i32 @memblock_reserve(i32 noundef %18, i32 noundef %24) #8
  call fastcc void @init_screen_info() #11
  call void @efi_memmap_unmap() #9
  %26 = load i32, ptr @cpu_state_table, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %62, label %28

28:                                               ; preds = %16
  %29 = call ptr @early_memremap_ro(i32 noundef %26, i32 noundef 16) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %62

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.efi_arm_entry_state, ptr %29, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.efi_arm_entry_state, ptr %29, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %45 = and i32 %44, 256
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %61, label %50

47:                                               ; preds = %38, %33
  %48 = phi ptr [ @.str.4, %33 ], [ @.str.5, %38 ]
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %48) #9
  br label %50

50:                                               ; preds = %47, %43
  %51 = load i32, ptr %29, align 4
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %51) #9
  %53 = load i32, ptr %34, align 4
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %53) #9
  %55 = getelementptr inbounds %struct.efi_arm_entry_state, ptr %29, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %56) #9
  %58 = getelementptr inbounds %struct.efi_arm_entry_state, ptr %29, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %59) #9
  br label %61

61:                                               ; preds = %50, %43
  call void @early_memunmap(ptr noundef nonnull %29, i32 noundef 16) #8
  br label %62

62:                                               ; preds = %61, %31, %16, %15, %0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @efi_get_fdt_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @efi_memmap_init_early(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @uefi_init(i64 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = trunc i64 %0 to i32
  %3 = tail call ptr @early_memremap_ro(i32 noundef %2, i32 noundef 72) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %33

7:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26)) #8
  %8 = tail call i32 @efi_systab_check_header(ptr noundef nonnull %3, i32 noundef 2) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.anon.1, ptr %3, i32 0, i32 9
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr @efi, align 4
  %13 = getelementptr inbounds %struct.efi_table_hdr_t, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 8
  store i32 %14, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 1), align 4
  %15 = getelementptr inbounds %struct.anon.1, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = tail call fastcc i32 @efi_to_phys(i32 noundef %16) #11
  tail call void @efi_systab_report_header(ptr noundef nonnull %3, i32 noundef %17) #8
  %18 = getelementptr inbounds %struct.anon.1, ptr %3, i32 0, i32 11
  %19 = load i32, ptr %18, align 8
  %20 = mul i32 %19, 20
  %21 = getelementptr inbounds %struct.anon.1, ptr %3, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = tail call fastcc i32 @efi_to_phys(i32 noundef %22) #11
  %24 = tail call ptr @early_memremap_ro(i32 noundef %23, i32 noundef %20) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %10
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  br label %31

28:                                               ; preds = %10
  %29 = load i32, ptr %18, align 8
  %30 = tail call i32 @efi_config_parse_tables(ptr noundef nonnull %24, i32 noundef %29, ptr noundef nonnull @arch_tables) #8
  tail call void @early_memunmap(ptr noundef nonnull %24, i32 noundef %20) #8
  br label %31

31:                                               ; preds = %28, %26, %7
  %32 = phi i32 [ %8, %7 ], [ -12, %26 ], [ %30, %28 ]
  tail call void @early_memunmap(ptr noundef nonnull %3, i32 noundef 72) #8
  br label %33

33:                                               ; preds = %31, %5
  %34 = phi i32 [ -12, %5 ], [ %32, %31 ]
  ret i32 %34
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @efi_memmap_unmap() local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @reserve_regions() unnamed_addr #0 section ".init.text" {
  %1 = alloca [64 x i8], align 1
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %3 = and i32 %2, 256
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %7

7:                                                ; preds = %5, %0
  tail call void @memblock_dump_all() #8
  %8 = tail call i32 @memblock_remove(i32 noundef 0, i32 noundef -1) #8
  %9 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  %10 = icmp ne ptr %9, null
  %11 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  %14 = icmp ule ptr %12, %13
  %15 = select i1 %10, i1 %14, i1 false
  br i1 %15, label %16, label %69

16:                                               ; preds = %61, %7
  %17 = phi ptr [ %63, %61 ], [ %9, %7 ]
  %18 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %17, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %17, i32 0, i32 4
  %21 = load i64, ptr %20, align 8
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %1, i8 0, i32 64, i1 false), !annotation !8
  %26 = shl i64 %21, 12
  %27 = add i64 %19, -1
  %28 = add i64 %27, %26
  %29 = call ptr @efi_md_typeattr_format(ptr noundef nonnull %1, i32 noundef 64, ptr noundef nonnull %17) #9
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i64 noundef %19, i64 noundef %28, ptr noundef %29) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #8
  br label %31

31:                                               ; preds = %25, %16
  %32 = add i64 %19, 4095
  %33 = lshr i64 %19, 12
  %34 = sub i64 %21, %33
  %35 = and i64 %19, -4096
  %36 = shl i64 %34, 12
  %37 = add i64 %32, %36
  %38 = and i64 %37, -4096
  %39 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %17, i32 0, i32 5
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 14
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %31
  call void @early_init_dt_add_memory_arch(i64 noundef %35, i64 noundef %38) #8
  %44 = load i32, ptr %17, align 8
  switch i32 %44, label %49 [
    i32 1, label %45
    i32 2, label %45
    i32 9, label %45
    i32 3, label %45
    i32 4, label %45
    i32 7, label %45
    i32 14, label %45
  ]

45:                                               ; preds = %43, %43, %43, %43, %43, %43, %43
  %46 = load i64, ptr %39, align 8
  %47 = and i64 %46, 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %43
  %50 = trunc i64 %35 to i32
  %51 = trunc i64 %38 to i32
  %52 = call i32 @memblock_mark_nomap(i32 noundef %50, i32 noundef %51) #8
  %53 = load i32, ptr %17, align 8
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i32 [ %53, %49 ], [ %44, %45 ]
  %56 = icmp eq i32 %55, 9
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = trunc i64 %35 to i32
  %59 = trunc i64 %38 to i32
  %60 = call i32 @memblock_reserve(i32 noundef %58, i32 noundef %59) #8
  br label %61

61:                                               ; preds = %57, %54, %31
  %62 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %63 = getelementptr i8, ptr %17, i32 %62
  %64 = icmp ne ptr %63, null
  %65 = getelementptr i8, ptr %63, i32 %62
  %66 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  %67 = icmp ule ptr %65, %66
  %68 = select i1 %64, i1 %67, i1 false
  br i1 %68, label %16, label %69

69:                                               ; preds = %61, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_init_dt_check_for_usable_mem_range() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @efi_esrt_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @init_screen_info() unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @screen_info_table, align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @early_memremap_ro(i32 noundef %1, i32 noundef 64) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #9
  br label %19

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) @screen_info, ptr noundef nonnull align 1 dereferenceable(64) %4, i32 64, i1 false)
  tail call void @early_memunmap(ptr noundef nonnull %4, i32 noundef 64) #8
  store i8 80, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5), align 1
  store i8 25, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10), align 1
  br label %9

9:                                                ; preds = %8, %0
  %10 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 11), align 1
  %11 = icmp eq i8 %10, 112
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  %14 = tail call zeroext i1 @memblock_is_map_memory(i32 noundef %13) #8
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 16), align 1
  %17 = load i32, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 17), align 1
  %18 = tail call i32 @memblock_mark_nomap(i32 noundef %16, i32 noundef %17) #8
  br label %19

19:                                               ; preds = %15, %12, %9, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @early_memremap_ro(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_memunmap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_systab_check_header(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @efi_systab_report_header(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define internal fastcc i32 @efi_to_phys(i32 noundef %0) unnamed_addr #6 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  %5 = icmp ne ptr %2, null
  %6 = getelementptr i8, ptr %2, i32 %3
  %7 = icmp ule ptr %6, %4
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = zext i32 %0 to i64
  br label %11

11:                                               ; preds = %34, %9
  %12 = phi ptr [ %6, %9 ], [ %36, %34 ]
  %13 = phi ptr [ %2, %9 ], [ %12, %34 ]
  %14 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %13, i32 0, i32 5
  %15 = load i64, ptr %14, align 8
  %16 = icmp sgt i64 %15, -1
  br i1 %16, label %34, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %13, i32 0, i32 3
  %19 = load i64, ptr %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = icmp ugt i64 %19, %10
  br i1 %22, label %34, label %23

23:                                               ; preds = %21
  %24 = sub i64 %10, %19
  %25 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %13, i32 0, i32 4
  %26 = load i64, ptr %25, align 8
  %27 = shl i64 %26, 12
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %13, i32 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %24, %31
  %33 = trunc i64 %32 to i32
  br label %39

34:                                               ; preds = %23, %21, %11
  %35 = icmp ne ptr %12, null
  %36 = getelementptr i8, ptr %12, i32 %3
  %37 = icmp ule ptr %36, %4
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %11, label %39

39:                                               ; preds = %34, %29, %17, %1
  %40 = phi i32 [ %33, %29 ], [ %0, %1 ], [ %0, %34 ], [ %0, %17 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_config_parse_tables(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_dump_all() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_remove(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @efi_md_typeattr_format(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_init_dt_add_memory_arch(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_mark_nomap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_map_memory(i32 noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { cold }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
