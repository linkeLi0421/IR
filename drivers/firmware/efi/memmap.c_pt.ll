; ModuleID = '/llk/IR/drivers/firmware/efi/memmap.c_pt.bc'
source_filename = "../drivers/firmware/efi/memmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.60, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.60 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.efi_memory_map_data = type { i32, i32, i32, i32, i32 }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.range = type { i64, i64 }
%struct.efi_mem_range = type { %struct.range, i64 }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [30 x i8] c"drivers/firmware/efi/memmap.c\00", align 1
@efi = external dso_local global %struct.efi, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\013efi: Could not map the memory map!\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @__efi_memmap_free(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = and i32 %2, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call zeroext i1 @slab_is_available() #7
  %8 = trunc i64 %0 to i32
  br i1 %7, label %9, label %10

9:                                                ; preds = %6
  tail call void @memblock_free_late(i32 noundef %8, i32 noundef %1) #7
  br label %30

10:                                               ; preds = %6
  %11 = tail call i32 @memblock_phys_free(i32 noundef %8, i32 noundef %1) #7
  br label %30

12:                                               ; preds = %3
  %13 = and i32 %2, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @mem_map, align 4
  %17 = lshr i64 %0, 12
  %18 = trunc i64 %17 to i32
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %20 = sub i32 %18, %19
  %21 = getelementptr %struct.page, ptr %16, i32 %20
  %22 = add i32 %1, -1
  %23 = icmp ult i32 %22, 4096
  %24 = lshr i32 %22, 12
  %25 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 false) #7, !range !8
  %26 = sub nuw nsw i32 32, %25
  %27 = select i1 %23, i32 0, i32 %26
  %28 = tail call ptr @page_address(ptr noundef %21) #7
  %29 = ptrtoint ptr %28 to i32
  tail call void @free_pages(i32 noundef %29, i32 noundef %27) #7
  br label %30

30:                                               ; preds = %15, %12, %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @slab_is_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free_late(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_free(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @efi_memmap_alloc(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.efi_memory_map_data, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %5, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %12 = mul i32 %11, %0
  %13 = getelementptr inbounds %struct.efi_memory_map_data, ptr %1, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 4), align 4
  %15 = getelementptr inbounds %struct.efi_memory_map_data, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %17 = getelementptr inbounds %struct.efi_memory_map_data, ptr %1, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.efi_memory_map_data, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -7
  store i32 %20, ptr %18, align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 6), align 4
  %22 = and i32 %21, 1
  %23 = or i32 %22, %20
  store i32 %23, ptr %18, align 4
  %24 = tail call zeroext i1 @slab_is_available() #7
  %25 = load i32, ptr %18, align 4
  br i1 %24, label %26, label %30

26:                                               ; preds = %10
  %27 = or i32 %25, 4
  store i32 %27, ptr %18, align 4
  %28 = load i32, ptr %13, align 4
  %29 = tail call fastcc i32 @__efi_memmap_alloc_late(i32 noundef %28) #8
  br label %34

30:                                               ; preds = %10
  %31 = or i32 %25, 2
  store i32 %31, ptr %18, align 4
  %32 = load i32, ptr %13, align 4
  %33 = tail call i32 @memblock_phys_alloc_range(i32 noundef %32, i32 noundef 64, i32 noundef 0, i32 noundef 0) #7
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %33, %30 ], [ %29, %26 ]
  store i32 %35, ptr %1, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 -12, i32 0
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @__efi_memmap_alloc_late(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 4096
  %4 = lshr i32 %2, 12
  %5 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 false) #7, !range !8
  %6 = sub nuw nsw i32 32, %5
  %7 = select i1 %3, i32 0, i32 %6
  %8 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef %7, i32 noundef 0, ptr noundef null) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %8 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = lshr exact i32 %14, 5
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %17 = add i32 %15, %16
  %18 = shl i32 %17, 12
  br label %19

19:                                               ; preds = %10, %1
  %20 = phi i32 [ %18, %10 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @efi_memmap_init_early(ptr nocapture noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 6), align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef null) #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.efi_memory_map_data, ptr %0, i32 0, i32 4
  store i32 0, ptr %7, align 4
  %8 = tail call fastcc i32 @__efi_memmap_init(ptr noundef %0) #8
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @__efi_memmap_init(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %3 = and i32 %2, 64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4
  %7 = getelementptr inbounds %struct.efi_memory_map_data, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.efi_memory_map_data, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  br i1 %10, label %15, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @memremap(i32 noundef %6, i32 noundef %12, i32 noundef 1) #7
  br label %17

15:                                               ; preds = %5
  %16 = tail call ptr @early_memremap(i32 noundef %6, i32 noundef %12) #7
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %33

22:                                               ; preds = %17
  tail call fastcc void @efi_memmap_free() #8
  %23 = load i32, ptr %0, align 4
  %24 = getelementptr inbounds %struct.efi_memory_map_data, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.efi_memory_map_data, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = udiv i32 %25, %27
  %29 = getelementptr i8, ptr %18, i32 %25
  %30 = getelementptr inbounds %struct.efi_memory_map_data, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %7, align 4
  tail call void @_set_bit(i32 noundef 4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26)) #7
  store i32 %23, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25), align 4
  store ptr %18, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  store ptr %29, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 2), align 4
  store i32 %28, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 3), align 4
  store i32 %31, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 4), align 4
  store i32 %27, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  store i32 %32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 6), align 4
  br label %33

33:                                               ; preds = %22, %20, %1
  %34 = phi i32 [ 0, %22 ], [ -12, %20 ], [ 0, %1 ]
  ret i32 %34
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @efi_memmap_unmap() local_unnamed_addr #0 section ".init.text" {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26), align 4
  %2 = and i32 %1, 16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 6), align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 3), align 4
  %11 = mul i32 %10, %9
  %12 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  tail call void @early_memunmap(ptr noundef %12, i32 noundef %11) #7
  br label %15

13:                                               ; preds = %4
  %14 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  tail call void @memunmap(ptr noundef %14) #7
  br label %15

15:                                               ; preds = %13, %8
  store ptr null, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  tail call void @_clear_bit(i32 noundef 4, ptr noundef getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 26)) #7
  br label %16

16:                                               ; preds = %15, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_memunmap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @efi_memmap_init_late(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.efi_memory_map_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #7
  store i32 %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.efi_memory_map_data, ptr %3, i32 0, i32 1
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.efi_memory_map_data, ptr %3, i32 0, i32 4
  store i32 1, ptr %5, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 1), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 6), align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 212, i32 noundef 9, ptr noundef null) #7
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.efi_memory_map_data, ptr %3, i32 0, i32 3
  %16 = getelementptr inbounds %struct.efi_memory_map_data, ptr %3, i32 0, i32 2
  %17 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 4), align 4
  store i32 %17, ptr %16, align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  store i32 %18, ptr %15, align 4
  %19 = call fastcc i32 @__efi_memmap_init(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #7
  ret i32 %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @efi_memmap_install(ptr nocapture noundef readonly %0) local_unnamed_addr #0 section ".init.text" {
  tail call void @efi_memmap_unmap() #8
  %2 = tail call fastcc i32 @__efi_memmap_init(ptr noundef %0) #8
  ret i32 %2
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @efi_memmap_split_count(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 section ".init.text" {
  %3 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %0, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %0, i32 0, i32 4
  %6 = load i64, ptr %5, align 8
  %7 = shl i64 %6, 12
  %8 = add i64 %4, -1
  %9 = add i64 %8, %7
  %10 = load i64, ptr %1, align 8
  %11 = getelementptr inbounds %struct.range, ptr %1, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = icmp ule i64 %10, %4
  %14 = icmp ult i64 %4, %12
  %15 = select i1 %13, i1 %14, i1 false
  %16 = icmp ult i64 %12, %9
  %17 = select i1 %15, i1 %16, i1 false
  %18 = zext i1 %17 to i32
  %19 = icmp ult i64 %4, %10
  %20 = icmp ult i64 %10, %9
  %21 = select i1 %19, i1 %20, i1 false
  %22 = or i32 %18, 2
  %23 = select i1 %16, i32 %22, i32 %18
  %24 = xor i1 %16, true
  %25 = zext i1 %24 to i32
  %26 = add nuw nsw i32 %23, %25
  %27 = select i1 %21, i32 %26, i32 %18
  ret i32 %27
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @efi_memmap_insert(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 section ".init.text" {
  %4 = load i64, ptr %2, align 8
  %5 = getelementptr inbounds %struct.range, ptr %2, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.efi_mem_range, ptr %2, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %4, 4095
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = add i64 %6, 1
  %13 = and i64 %12, 4095
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 310, i32 noundef 9, ptr noundef null) #7
  br label %111

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.efi_memory_map, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.efi_memory_map, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %22, label %111

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.efi_memory_map, ptr %0, i32 0, i32 5
  %24 = sub i64 1, %4
  %25 = add i64 %24, %6
  %26 = lshr i64 %25, 12
  %27 = load i32, ptr %23, align 4
  br label %28

28:                                               ; preds = %104, %22
  %29 = phi i32 [ %27, %22 ], [ %106, %104 ]
  %30 = phi ptr [ %1, %22 ], [ %108, %104 ]
  %31 = phi ptr [ %18, %22 ], [ %107, %104 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %31, i32 %29, i1 false)
  %32 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %30, i32 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %30, i32 0, i32 4
  %35 = load i64, ptr %34, align 8
  %36 = shl i64 %35, 12
  %37 = add i64 %33, -1
  %38 = add i64 %37, %36
  %39 = icmp ugt i64 %4, %33
  %40 = icmp ugt i64 %38, %6
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %30, i32 0, i32 5
  %44 = load i64, ptr %43, align 8
  %45 = or i64 %44, %8
  store i64 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %42, %28
  %47 = xor i1 %39, true
  %48 = icmp ult i64 %33, %6
  %49 = select i1 %47, i1 %48, i1 false
  %50 = select i1 %49, i1 %40, i1 false
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %30, i32 0, i32 5
  %53 = load i64, ptr %52, align 8
  %54 = or i64 %53, %8
  store i64 %54, ptr %52, align 8
  %55 = sub i64 %12, %33
  %56 = lshr i64 %55, 12
  store i64 %56, ptr %34, align 8
  %57 = load i32, ptr %23, align 4
  %58 = getelementptr i8, ptr %30, i32 %57
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %58, ptr align 1 %31, i32 %57, i1 false)
  %59 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %58, i32 0, i32 2
  store i64 %12, ptr %59, align 8
  %60 = sub i64 %38, %6
  %61 = lshr i64 %60, 12
  %62 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %58, i32 0, i32 4
  store i64 %61, ptr %62, align 8
  br label %63

63:                                               ; preds = %51, %46
  %64 = phi i64 [ %12, %51 ], [ %33, %46 ]
  %65 = phi ptr [ %58, %51 ], [ %30, %46 ]
  %66 = icmp ugt i64 %38, %4
  %67 = select i1 %39, i1 %66, i1 false
  %68 = select i1 %67, i1 %40, i1 false
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = sub i64 %4, %64
  %71 = lshr i64 %70, 12
  %72 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %65, i32 0, i32 4
  store i64 %71, ptr %72, align 8
  %73 = load i32, ptr %23, align 4
  %74 = getelementptr i8, ptr %65, i32 %73
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %74, ptr align 1 %31, i32 %73, i1 false)
  %75 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %74, i32 0, i32 5
  %76 = load i64, ptr %75, align 8
  %77 = or i64 %76, %8
  store i64 %77, ptr %75, align 8
  %78 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %74, i32 0, i32 2
  store i64 %4, ptr %78, align 8
  %79 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %74, i32 0, i32 4
  store i64 %26, ptr %79, align 8
  %80 = load i32, ptr %23, align 4
  %81 = getelementptr i8, ptr %74, i32 %80
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %81, ptr align 1 %31, i32 %80, i1 false)
  %82 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %81, i32 0, i32 2
  store i64 %12, ptr %82, align 8
  %83 = sub i64 %38, %6
  %84 = lshr i64 %83, 12
  %85 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %81, i32 0, i32 4
  store i64 %84, ptr %85, align 8
  br label %86

86:                                               ; preds = %69, %63
  %87 = phi i64 [ %12, %69 ], [ %64, %63 ]
  %88 = phi ptr [ %81, %69 ], [ %65, %63 ]
  %89 = xor i1 %67, true
  %90 = select i1 %89, i1 true, i1 %40
  br i1 %90, label %104, label %91

91:                                               ; preds = %86
  %92 = sub i64 %4, %87
  %93 = lshr i64 %92, 12
  %94 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %88, i32 0, i32 4
  store i64 %93, ptr %94, align 8
  %95 = load i32, ptr %23, align 4
  %96 = getelementptr i8, ptr %88, i32 %95
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %96, ptr align 1 %31, i32 %95, i1 false)
  %97 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %96, i32 0, i32 2
  store i64 %4, ptr %97, align 8
  %98 = add i64 %24, %38
  %99 = lshr i64 %98, 12
  %100 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %96, i32 0, i32 4
  store i64 %99, ptr %100, align 8
  %101 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %96, i32 0, i32 5
  %102 = load i64, ptr %101, align 8
  %103 = or i64 %102, %8
  store i64 %103, ptr %101, align 8
  br label %104

104:                                              ; preds = %91, %86
  %105 = phi ptr [ %96, %91 ], [ %88, %86 ]
  %106 = load i32, ptr %23, align 4
  %107 = getelementptr i8, ptr %31, i32 %106
  %108 = getelementptr i8, ptr %105, i32 %106
  %109 = load ptr, ptr %19, align 4
  %110 = icmp ult ptr %107, %109
  br i1 %110, label %28, label %111

111:                                              ; preds = %104, %16, %15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_alloc_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @early_memremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @efi_memmap_free() unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25), align 4
  %2 = zext i32 %1 to i64
  %3 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 5), align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 3), align 4
  %5 = mul i32 %4, %3
  %6 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 25, i32 6), align 4
  tail call void @__efi_memmap_free(i64 noundef %2, i32 noundef %5, i32 noundef %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold }
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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 2000, i32 1}
