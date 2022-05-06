; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.brcmf_mp_global_t = type { [256 x i8] }
%struct.brcmf_fw_request = type { i16, i16, i32, ptr, [0 x %struct.brcmf_fw_item] }
%struct.brcmf_fw_item = type { ptr, i32, i16, %union.anon.118 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { ptr, i32 }
%struct.brcmf_fw = type { ptr, ptr, i32, ptr }
%struct.brcmf_firmware_mapping = type { i32, i32, ptr }
%struct.brcmf_fw_name = type { ptr, ptr }
%struct.nvram_parser = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.efi_variable = type { [512 x i16], %struct.guid_t, i32, [1024 x i8], i32, i32 }
%struct.guid_t = type { [16 x i8] }

@__this_module = external dso_local global %struct.module, align 64
@__func__.brcmf_fw_alloc_request = private unnamed_addr constant [23 x i8] c"brcmf_fw_alloc_request\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"Unknown chip %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\016brcmfmac: %s: using %s for chip %s\0A\00", align 1
@brcmf_mp_global = external dso_local global %struct.brcmf_mp_global_t, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__func__.brcmf_fw_complete_request = private unnamed_addr constant [26 x i8] c"brcmf_fw_complete_request\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"unknown fw type: %d\0A\00", align 1
@__const.brcmf_fw_nvram_from_efi.name = private unnamed_addr constant [6 x i16] [i16 110, i16 118, i16 114, i16 97, i16 109, i16 0], align 2
@.str.5 = private unnamed_addr constant [42 x i8] c"\016brcmfmac: %s: Using nvram EFI variable\0A\00", align 1
@__func__.brcmf_fw_nvram_from_efi = private unnamed_addr constant [24 x i8] c"brcmf_fw_nvram_from_efi\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ccode=ALL\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ccode=XV\0D\00", align 1
@nv_parser_states = internal unnamed_addr constant [5 x ptr] [ptr @brcmf_nvram_handle_idle, ptr @brcmf_nvram_handle_key, ptr @brcmf_nvram_handle_value, ptr @brcmf_nvram_handle_comment, ptr @brcmf_nvram_handle_end], align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"RAW1\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"devpath\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"pcie/\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"boardrev\00", align 1
@__const.brcmf_fw_strip_multi_v1.pci_path = private unnamed_addr constant [9 x i8] c"=pci/?/?\00", align 1
@__const.brcmf_fw_strip_multi_v1.pcie_path = private unnamed_addr constant [10 x i8] c"=pcie/?/?\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"=pci/%d/%d\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"=pcie/%d/%d\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"pcie/%d/%d/\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"boardrev=0xff\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_fw_nvram_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_fw_get_firmwares(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.brcmf_fw_request, ptr %1, i32 0, i32 4
  %5 = icmp eq ptr %2, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.brcmf_fw_request, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %15, %6
  %11 = phi i32 [ %16, %15 ], [ 0, %6 ]
  %12 = phi ptr [ %17, %15 ], [ %4, %6 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %10
  %16 = add nuw i32 %11, 1
  %17 = getelementptr %struct.brcmf_fw_item, ptr %12, i32 1
  %18 = icmp eq i32 %16, %8
  br i1 %18, label %19, label %10

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 16) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  store ptr %0, ptr %21, align 8
  %24 = getelementptr inbounds %struct.brcmf_fw, ptr %21, i32 0, i32 1
  store ptr %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.brcmf_fw, ptr %21, i32 0, i32 3
  store ptr %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.brcmf_fw_request, ptr %1, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %4, align 4
  %31 = tail call fastcc ptr @brcm_alt_fw_path(ptr noundef %30, ptr noundef nonnull %27)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @request_firmware_nowait(ptr noundef nonnull @__this_module, i1 noundef zeroext true, ptr noundef nonnull %31, ptr noundef %0, i32 noundef 3264, ptr noundef nonnull %21, ptr noundef nonnull @brcmf_fw_request_done_alt_path) #16
  tail call void @kfree(ptr noundef nonnull %31) #16
  br label %38

35:                                               ; preds = %29, %23
  %36 = load ptr, ptr %4, align 4
  %37 = tail call i32 @request_firmware_nowait(ptr noundef nonnull @__this_module, i1 noundef zeroext true, ptr noundef %36, ptr noundef %0, i32 noundef 3264, ptr noundef nonnull %21, ptr noundef nonnull @brcmf_fw_request_done) #16
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void @brcmf_fw_request_done(ptr noundef null, ptr noundef nonnull %21)
  br label %42

42:                                               ; preds = %41, %38, %19, %10, %6, %3
  %43 = phi i32 [ -22, %3 ], [ -12, %19 ], [ 0, %41 ], [ 0, %38 ], [ -22, %6 ], [ -22, %10 ]
  ret i32 %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc noalias ptr @brcm_alt_fw_path(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [320 x i8], align 1
  %4 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(320) %3, i8 0, i32 320, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !8
  %5 = call i32 @strscpy(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 320) #16
  %6 = call i32 @strlen(ptr noundef nonnull %3)
  %7 = icmp ult i32 %6, 5
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %3, i32 %6
  %10 = getelementptr i8, ptr %9, i32 -4
  %11 = call i32 @strscpy(ptr noundef nonnull %4, ptr noundef %10, i32 noundef 5) #16
  %12 = call i32 @strlen(ptr noundef nonnull %3)
  %13 = add i32 %12, -4
  %14 = getelementptr [320 x i8], ptr %3, i32 0, i32 %13
  store i8 0, ptr %14, align 1
  %15 = call i32 @strlcat(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, i32 noundef 320) #16
  %16 = call i32 @strlcat(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 320) #16
  %17 = call i32 @strlcat(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 320) #16
  %18 = call noalias ptr @kstrdup(ptr noundef nonnull %3, i32 noundef 3264) #16
  br label %19

19:                                               ; preds = %8, %2
  %20 = phi ptr [ %18, %8 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %3) #16
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_fw_request_done_alt_path(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.brcmf_fw, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_fw_request, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = tail call i32 @request_firmware_nowait(ptr noundef nonnull @__this_module, i1 noundef zeroext true, ptr noundef %8, ptr noundef %9, i32 noundef 3264, ptr noundef %1, ptr noundef nonnull @brcmf_fw_request_done) #16
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4, %2
  tail call void @brcmf_fw_request_done(ptr noundef %0, ptr noundef %1)
  br label %13

13:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_fw_request_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  %4 = tail call fastcc i32 @brcmf_fw_complete_request(ptr noundef %0, ptr noundef %1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.brcmf_fw, ptr %1, i32 0, i32 2
  %8 = getelementptr inbounds %struct.brcmf_fw, ptr %1, i32 0, i32 1
  br label %9

9:                                                ; preds = %37, %6
  %10 = load i32, ptr %7, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %7, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.brcmf_fw_request, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %9
  %17 = getelementptr %struct.brcmf_fw_request, ptr %12, i32 0, i32 4, i32 %11
  %18 = getelementptr %struct.brcmf_fw_request, ptr %12, i32 0, i32 4, i32 %11, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.brcmf_fw_request, ptr %12, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %17, align 4
  %27 = call fastcc ptr @brcm_alt_fw_path(ptr noundef %26, ptr noundef nonnull %23) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %1, align 4
  %31 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef nonnull %27, ptr noundef %30) #16
  call void @kfree(ptr noundef nonnull %27) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %25, %21, %16
  %34 = load ptr, ptr %17, align 4
  %35 = load ptr, ptr %1, align 4
  %36 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef %34, ptr noundef %35) #16
  br label %37

37:                                               ; preds = %33, %29
  %38 = load ptr, ptr %3, align 4
  %39 = call fastcc i32 @brcmf_fw_complete_request(ptr noundef %38, ptr noundef %1)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %9, label %41

41:                                               ; preds = %37, %2
  %42 = phi i32 [ %4, %2 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.brcmf_fw, ptr %1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.brcmf_fw_request, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.brcmf_fw_request, ptr %44, i32 0, i32 4
  br label %50

50:                                               ; preds = %61, %48
  %51 = phi i32 [ %62, %61 ], [ 0, %48 ]
  %52 = phi ptr [ %63, %61 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.brcmf_fw_item, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  switch i32 %54, label %61 [
    i32 0, label %55
    i32 1, label %58
  ]

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.brcmf_fw_item, ptr %52, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  call void @release_firmware(ptr noundef %57) #16
  br label %61

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.brcmf_fw_item, ptr %52, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  call void @kfree(ptr noundef %60) #16
  br label %61

61:                                               ; preds = %58, %55, %50
  %62 = add nuw i32 %51, 1
  %63 = getelementptr %struct.brcmf_fw_item, ptr %52, i32 1
  %64 = load i32, ptr %45, align 4
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %50, label %66

66:                                               ; preds = %61, %41
  call void @kfree(ptr noundef %44) #16
  store ptr null, ptr %43, align 4
  br label %67

67:                                               ; preds = %66, %9
  %68 = phi ptr [ null, %66 ], [ %12, %9 ]
  %69 = phi i32 [ %42, %66 ], [ 0, %9 ]
  %70 = getelementptr inbounds %struct.brcmf_fw, ptr %1, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %1, align 4
  call void %71(ptr noundef %72, i32 noundef %69, ptr noundef %68) #16
  call void @kfree(ptr noundef %1) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_fw_alloc_request(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = shl nuw i32 1, %1
  br label %11

11:                                               ; preds = %21, %9
  %12 = phi i32 [ 0, %9 ], [ %22, %21 ]
  %13 = getelementptr %struct.brcmf_firmware_mapping, ptr %2, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr %struct.brcmf_firmware_mapping, ptr %2, i32 %12, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16, %11
  %22 = add nuw i32 %12, 1
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %11

24:                                               ; preds = %21
  %25 = call ptr @brcmf_chip_name(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 12) #16
  br label %30

26:                                               ; preds = %16, %6
  %27 = phi i32 [ 0, %6 ], [ %12, %16 ]
  %28 = call ptr @brcmf_chip_name(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 12) #16
  %29 = icmp eq i32 %27, %3
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %24
  %31 = call i32 @net_ratelimit() #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %83, label %33

33:                                               ; preds = %30
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fw_alloc_request, ptr noundef nonnull @.str, ptr noundef nonnull %7) #16
  br label %83

34:                                               ; preds = %26
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 20) #16
  %36 = extractvalue { i32, i1 } %35, 1
  %37 = extractvalue { i32, i1 } %35, 0
  %38 = add nuw i32 %37, 12
  %39 = select i1 %36, i32 -1, i32 %38
  %40 = call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #18
  %41 = icmp eq ptr %40, null
  br i1 %41, label %83, label %42

42:                                               ; preds = %34
  %43 = getelementptr %struct.brcmf_firmware_mapping, ptr %2, i32 %27, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.brcmf_fw_alloc_request, ptr noundef %44, ptr noundef nonnull %7) #19
  %46 = call i32 @strnlen(ptr noundef nonnull @brcmf_mp_global, i32 noundef 256)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = add i32 %46, -1
  %50 = getelementptr i8, ptr @brcmf_mp_global, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i32 [ %52, %48 ], [ 0, %42 ]
  %55 = getelementptr inbounds %struct.brcmf_fw_request, ptr %40, i32 0, i32 2
  store i32 %5, ptr %55, align 4
  %56 = icmp eq i32 %5, 0
  br i1 %56, label %83, label %57

57:                                               ; preds = %53
  %58 = icmp eq i32 %54, 47
  br label %59

59:                                               ; preds = %73, %57
  %60 = phi i32 [ 0, %57 ], [ %81, %73 ]
  %61 = getelementptr %struct.brcmf_fw_name, ptr %4, i32 %60
  %62 = getelementptr %struct.brcmf_fw_name, ptr %4, i32 %60, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr %struct.brcmf_fw_request, ptr %40, i32 0, i32 4, i32 %60
  store ptr %63, ptr %64, align 4
  store i8 0, ptr %63, align 1
  %65 = load i8, ptr @brcmf_mp_global, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %59
  %68 = load ptr, ptr %62, align 4
  %69 = call i32 @strlcpy(ptr noundef %68, ptr noundef nonnull @brcmf_mp_global, i32 noundef 320) #16
  br i1 %58, label %73, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %62, align 4
  %72 = call i32 @strlcat(ptr noundef %71, ptr noundef nonnull @.str.2, i32 noundef 320) #16
  br label %73

73:                                               ; preds = %70, %67, %59
  %74 = load ptr, ptr %62, align 4
  %75 = load ptr, ptr %43, align 4
  %76 = call i32 @strlcat(ptr noundef %74, ptr noundef %75, i32 noundef 320) #16
  %77 = load ptr, ptr %62, align 4
  %78 = load ptr, ptr %61, align 4
  %79 = call i32 @strlcat(ptr noundef %77, ptr noundef %78, i32 noundef 320) #16
  %80 = load ptr, ptr %62, align 4
  store ptr %80, ptr %64, align 4
  %81 = add nuw i32 %60, 1
  %82 = icmp eq i32 %81, %5
  br i1 %82, label %83, label %59

83:                                               ; preds = %73, %53, %34, %33, %30
  %84 = phi ptr [ null, %33 ], [ null, %30 ], [ null, %34 ], [ %40, %53 ], [ %40, %73 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  ret ptr %84
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_name(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_fw_complete_request(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [10 x i8], align 1
  %4 = alloca [9 x i8], align 1
  %5 = alloca [10 x i8], align 1
  %6 = alloca %struct.nvram_parser, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.brcmf_fw, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_fw, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.brcmf_fw_request, ptr %10, i32 0, i32 4, i32 %12, i32 1
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %368 [
    i32 1, label %15
    i32 0, label %364
  ]

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !8
  %16 = icmp eq ptr %0, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %0, align 4
  store i32 %22, ptr %8, align 4
  br label %81

23:                                               ; preds = %17, %15
  %24 = call ptr @bcm47xx_nvram_get_contents(ptr noundef nonnull %8) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %79

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %28 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 2124) #17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %58, label %30

30:                                               ; preds = %26
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(12) %28, ptr noundef nonnull align 2 dereferenceable(12) @__const.brcmf_fw_nvram_from_efi.name, i32 12, i1 false) #16
  %31 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1
  store i8 -39, ptr %31, align 8
  %32 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 1
  store i8 11, ptr %32, align 1
  %33 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 2
  store i8 -80, ptr %33, align 2
  %34 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 3
  store i8 116, ptr %34, align 1
  %35 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 4
  store i8 90, ptr %35, align 4
  %36 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 5
  store i8 -128, ptr %36, align 1
  %37 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 6
  store i8 97, ptr %37, align 2
  %38 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 7
  store i8 77, ptr %38, align 1
  %39 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 8
  store i8 -75, ptr %39, align 8
  %40 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 9
  store i8 31, ptr %40, align 1
  %41 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 10
  store i8 67, ptr %41, align 2
  %42 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 11
  store i8 38, ptr %42, align 1
  %43 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 12
  store i8 -127, ptr %43, align 4
  %44 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 13
  store i8 35, ptr %44, align 1
  %45 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 14
  store i8 -47, ptr %45, align 2
  %46 = getelementptr inbounds %struct.efi_variable, ptr %28, i32 0, i32 1, i32 0, i32 15
  store i8 19, ptr %46, align 1
  %47 = call i32 @efivar_entry_size(ptr noundef nonnull %28, ptr noundef nonnull %7) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %30
  %50 = load i32, ptr %7, align 4
  %51 = call noalias align 64 ptr @__kmalloc(i32 noundef %50, i32 noundef 3264) #18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = call i32 @efivar_entry_get(ptr noundef nonnull %28, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %51) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53, %49, %30
  %57 = phi ptr [ null, %30 ], [ %51, %53 ], [ null, %49 ]
  call void @kfree(ptr noundef %57) #16
  call void @kfree(ptr noundef nonnull %28) #16
  br label %58

58:                                               ; preds = %56, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %59 = getelementptr %struct.brcmf_fw_request, ptr %10, i32 0, i32 4, i32 %12, i32 2
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 1
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %362, label %78

63:                                               ; preds = %53
  %64 = load i32, ptr %7, align 4
  %65 = call ptr @strnstr(ptr noundef nonnull %51, ptr noundef nonnull @.str.6, i32 noundef %64) #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = call ptr @strnstr(ptr noundef nonnull %51, ptr noundef nonnull @.str.7, i32 noundef %64) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %67, %63
  %71 = phi ptr [ %68, %67 ], [ %65, %63 ]
  %72 = getelementptr i8, ptr %71, i32 6
  store i8 88, ptr %72, align 1
  %73 = getelementptr i8, ptr %71, i32 7
  store i8 50, ptr %73, align 1
  %74 = getelementptr i8, ptr %71, i32 8
  store i8 13, ptr %74, align 1
  br label %75

75:                                               ; preds = %70, %67
  %76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.brcmf_fw_nvram_from_efi) #19
  call void @kfree(ptr noundef nonnull %28) #16
  %77 = load i32, ptr %7, align 4
  store i32 %77, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %81

78:                                               ; preds = %58
  call void @release_firmware(ptr noundef %0) #16
  br label %351

79:                                               ; preds = %23
  %80 = load i32, ptr %8, align 4
  br label %81

81:                                               ; preds = %79, %75, %21
  %82 = phi i32 [ %80, %79 ], [ %22, %21 ], [ %77, %75 ]
  %83 = phi i1 [ true, %79 ], [ false, %21 ], [ false, %75 ]
  %84 = phi i1 [ false, %79 ], [ false, %21 ], [ true, %75 ]
  %85 = phi ptr [ %24, %79 ], [ %19, %21 ], [ %51, %75 ]
  %86 = load ptr, ptr %9, align 4
  %87 = load i16, ptr %86, align 4
  %88 = getelementptr inbounds %struct.brcmf_fw_request, ptr %86, i32 0, i32 1
  %89 = load i16, ptr %88, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #16
  %90 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i64 36, i1 false) #16
  store ptr %85, ptr %90, align 4
  %91 = icmp ugt i32 %82, 64000
  %92 = add i32 %82, 8
  %93 = select i1 %91, i32 64008, i32 %92
  %94 = call noalias align 64 ptr @__kmalloc(i32 noundef %93, i32 noundef 3520) #18
  %95 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 2
  store ptr %94, ptr %95, align 4
  %96 = icmp eq ptr %94, null
  br i1 %96, label %343, label %97

97:                                               ; preds = %81
  %98 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 4
  store i32 1, ptr %98, align 4
  %99 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 5
  store i32 1, ptr %99, align 4
  %100 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 6
  %101 = icmp eq i32 %82, 0
  br i1 %101, label %227, label %102

102:                                              ; preds = %102, %97
  %103 = phi i32 [ %106, %102 ], [ 0, %97 ]
  %104 = getelementptr [5 x ptr], ptr @nv_parser_states, i32 0, i32 %103
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 %105(ptr noundef nonnull %6) #16
  store i32 %106, ptr %6, align 4
  %107 = icmp ne i32 %106, 4
  %108 = load i32, ptr %100, align 4
  %109 = icmp ult i32 %108, %82
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %102, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 8
  %113 = load i8, ptr %112, align 4, !range !9
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %227, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 10
  store i8 0, ptr %116, align 2
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 1 dereferenceable(9) @__const.brcmf_fw_strip_multi_v1.pci_path, i32 9, i1 false) #16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @__const.brcmf_fw_strip_multi_v1.pcie_path, i32 10, i1 false) #16
  %117 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, 8
  %120 = call noalias align 64 ptr @__kmalloc(i32 noundef %119, i32 noundef 3520) #18
  %121 = icmp eq ptr %120, null
  br i1 %121, label %223, label %122

122:                                              ; preds = %115
  %123 = load i32, ptr %117, align 4
  %124 = icmp ult i32 %123, 25
  br i1 %124, label %223, label %125

125:                                              ; preds = %122
  %126 = zext i16 %87 to i32
  %127 = zext i16 %89 to i32
  %128 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %126, i32 noundef %127) #16
  %129 = call i32 @strlen(ptr noundef nonnull %4) #16
  %130 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull @.str.13, i32 noundef %126, i32 noundef %127) #16
  %131 = call i32 @strlen(ptr noundef nonnull %5) #16
  %132 = load i32, ptr %117, align 4
  %133 = add i32 %132, -19
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %223, label %135

135:                                              ; preds = %125
  %136 = load ptr, ptr %95, align 4
  br label %137

137:                                              ; preds = %157, %135
  %138 = phi i32 [ 0, %135 ], [ %156, %157 ]
  %139 = getelementptr i8, ptr %136, i32 %138
  %140 = call i32 @strncmp(ptr noundef %139, ptr noundef nonnull dereferenceable(8) @.str.9, i32 noundef 7) #16
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = add i32 %138, 8
  %144 = getelementptr i8, ptr %136, i32 %143
  %145 = call i32 @strncmp(ptr noundef %144, ptr noundef nonnull %4, i32 noundef %129) #16
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %142
  %148 = call i32 @strncmp(ptr noundef %144, ptr noundef nonnull %5, i32 noundef %131) #16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %147, %137
  br label %151

151:                                              ; preds = %151, %150
  %152 = phi i32 [ %156, %151 ], [ %138, %150 ]
  %153 = getelementptr i8, ptr %136, i32 %152
  %154 = load i8, ptr %153, align 1
  %155 = icmp eq i8 %154, 0
  %156 = add i32 %152, 1
  br i1 %155, label %157, label %151

157:                                              ; preds = %151
  %158 = icmp ult i32 %156, %133
  br i1 %158, label %137, label %223

159:                                              ; preds = %147, %142
  %160 = add i32 %138, 7
  %161 = getelementptr i8, ptr %136, i32 %160
  %162 = load i8, ptr %161, align 1
  %163 = add i8 %162, -48
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %132, 0
  br i1 %165, label %220, label %166

166:                                              ; preds = %159
  %167 = load ptr, ptr %95, align 4
  %168 = load ptr, ptr %95, align 4
  %169 = load i32, ptr %117, align 4
  br label %170

170:                                              ; preds = %218, %166
  %171 = phi ptr [ %209, %218 ], [ %136, %166 ]
  %172 = phi i32 [ %211, %218 ], [ 0, %166 ]
  %173 = phi i32 [ %217, %218 ], [ 0, %166 ]
  %174 = getelementptr i8, ptr %171, i32 %173
  %175 = load i8, ptr %174, align 1
  %176 = zext i8 %175 to i32
  %177 = add nsw i32 %176, -48
  %178 = icmp eq i32 %177, %164
  br i1 %178, label %179, label %208

179:                                              ; preds = %170
  %180 = add nuw i32 %173, 1
  %181 = getelementptr i8, ptr %171, i32 %180
  %182 = load i8, ptr %181, align 1
  %183 = icmp eq i8 %182, 58
  br i1 %183, label %184, label %208

184:                                              ; preds = %179
  %185 = add i32 %173, 2
  %186 = getelementptr i8, ptr %171, i32 %185
  %187 = call i32 @strncmp(ptr noundef %186, ptr noundef nonnull dereferenceable(9) @.str.11, i32 noundef 8) #16
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  store i8 1, ptr %116, align 2
  br label %190

190:                                              ; preds = %189, %184
  %191 = load i8, ptr %186, align 1
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %203, label %193

193:                                              ; preds = %193, %190
  %194 = phi i8 [ %201, %193 ], [ %191, %190 ]
  %195 = phi i32 [ %199, %193 ], [ %172, %190 ]
  %196 = phi i32 [ %198, %193 ], [ %185, %190 ]
  %197 = getelementptr i8, ptr %120, i32 %195
  store i8 %194, ptr %197, align 1
  %198 = add i32 %196, 1
  %199 = add i32 %195, 1
  %200 = getelementptr i8, ptr %167, i32 %198
  %201 = load i8, ptr %200, align 1
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %193

203:                                              ; preds = %193, %190
  %204 = phi i32 [ %185, %190 ], [ %198, %193 ]
  %205 = phi i32 [ %172, %190 ], [ %199, %193 ]
  %206 = getelementptr i8, ptr %120, i32 %205
  store i8 0, ptr %206, align 1
  %207 = add i32 %205, 1
  br label %208

208:                                              ; preds = %203, %179, %170
  %209 = phi ptr [ %168, %203 ], [ %171, %179 ], [ %171, %170 ]
  %210 = phi i32 [ %204, %203 ], [ %173, %179 ], [ %173, %170 ]
  %211 = phi i32 [ %207, %203 ], [ %172, %179 ], [ %172, %170 ]
  br label %212

212:                                              ; preds = %212, %208
  %213 = phi i32 [ %210, %208 ], [ %217, %212 ]
  %214 = getelementptr i8, ptr %209, i32 %213
  %215 = load i8, ptr %214, align 1
  %216 = icmp eq i8 %215, 0
  %217 = add i32 %213, 1
  br i1 %216, label %218, label %212

218:                                              ; preds = %212
  %219 = icmp ult i32 %217, %169
  br i1 %219, label %170, label %220

220:                                              ; preds = %218, %159
  %221 = phi ptr [ %136, %159 ], [ %209, %218 ]
  %222 = phi i32 [ 0, %159 ], [ %211, %218 ]
  call void @kfree(ptr noundef %221) #16
  store ptr %120, ptr %95, align 4
  br label %225

223:                                              ; preds = %157, %125, %122, %115
  %224 = phi ptr [ %120, %122 ], [ null, %115 ], [ %120, %125 ], [ %120, %157 ]
  call void @kfree(ptr noundef %224) #16
  br label %225

225:                                              ; preds = %223, %220
  %226 = phi i32 [ 0, %223 ], [ %222, %220 ]
  store i32 %226, ptr %117, align 4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #16
  br label %302

227:                                              ; preds = %111, %97
  %228 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 9
  %229 = load i8, ptr %228, align 1, !range !9
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 3
  %233 = load i32, ptr %232, align 4
  br label %302

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 10
  store i8 0, ptr %235, align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, i8 0, i32 10, i1 false) #16, !annotation !8
  %236 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 3
  %237 = load i32, ptr %236, align 4
  %238 = add i32 %237, 8
  %239 = call noalias align 64 ptr @__kmalloc(i32 noundef %238, i32 noundef 3520) #18
  %240 = icmp eq ptr %239, null
  br i1 %240, label %300, label %241

241:                                              ; preds = %234
  %242 = zext i16 %87 to i32
  %243 = zext i16 %89 to i32
  %244 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 10, ptr noundef nonnull @.str.14, i32 noundef %242, i32 noundef %243) #16
  %245 = call i32 @strlen(ptr noundef nonnull %3) #16
  %246 = load i32, ptr %236, align 4
  %247 = icmp eq i32 %246, %245
  %248 = load ptr, ptr %95, align 4
  br i1 %247, label %297, label %249

249:                                              ; preds = %241
  %250 = load ptr, ptr %95, align 4
  %251 = load ptr, ptr %95, align 4
  %252 = load i32, ptr %236, align 4
  %253 = sub i32 %252, %245
  br label %254

254:                                              ; preds = %295, %249
  %255 = phi ptr [ %286, %295 ], [ %248, %249 ]
  %256 = phi i32 [ %288, %295 ], [ 0, %249 ]
  %257 = phi i32 [ %294, %295 ], [ 0, %249 ]
  %258 = getelementptr i8, ptr %255, i32 %257
  %259 = call i32 @strncmp(ptr noundef %258, ptr noundef nonnull %3, i32 noundef %245) #16
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %285

261:                                              ; preds = %254
  %262 = add i32 %257, %245
  %263 = getelementptr i8, ptr %255, i32 %262
  %264 = call i32 @strncmp(ptr noundef %263, ptr noundef nonnull dereferenceable(9) @.str.11, i32 noundef 8) #16
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  store i8 1, ptr %235, align 2
  br label %267

267:                                              ; preds = %266, %261
  %268 = load i8, ptr %263, align 1
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %280, label %270

270:                                              ; preds = %270, %267
  %271 = phi i8 [ %278, %270 ], [ %268, %267 ]
  %272 = phi i32 [ %276, %270 ], [ %256, %267 ]
  %273 = phi i32 [ %275, %270 ], [ %262, %267 ]
  %274 = getelementptr i8, ptr %239, i32 %272
  store i8 %271, ptr %274, align 1
  %275 = add i32 %273, 1
  %276 = add i32 %272, 1
  %277 = getelementptr i8, ptr %250, i32 %275
  %278 = load i8, ptr %277, align 1
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %280, label %270

280:                                              ; preds = %270, %267
  %281 = phi i32 [ %262, %267 ], [ %275, %270 ]
  %282 = phi i32 [ %256, %267 ], [ %276, %270 ]
  %283 = getelementptr i8, ptr %239, i32 %282
  store i8 0, ptr %283, align 1
  %284 = add i32 %282, 1
  br label %285

285:                                              ; preds = %280, %254
  %286 = phi ptr [ %251, %280 ], [ %255, %254 ]
  %287 = phi i32 [ %281, %280 ], [ %257, %254 ]
  %288 = phi i32 [ %284, %280 ], [ %256, %254 ]
  br label %289

289:                                              ; preds = %289, %285
  %290 = phi i32 [ %287, %285 ], [ %294, %289 ]
  %291 = getelementptr i8, ptr %286, i32 %290
  %292 = load i8, ptr %291, align 1
  %293 = icmp eq i8 %292, 0
  %294 = add i32 %290, 1
  br i1 %293, label %295, label %289

295:                                              ; preds = %289
  %296 = icmp ult i32 %294, %253
  br i1 %296, label %254, label %297

297:                                              ; preds = %295, %241
  %298 = phi ptr [ %248, %241 ], [ %286, %295 ]
  %299 = phi i32 [ 0, %241 ], [ %288, %295 ]
  call void @kfree(ptr noundef %298) #16
  store ptr %239, ptr %95, align 4
  br label %300

300:                                              ; preds = %297, %234
  %301 = phi i32 [ %299, %297 ], [ 0, %234 ]
  store i32 %301, ptr %236, align 4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #16
  br label %302

302:                                              ; preds = %300, %231, %225
  %303 = phi i32 [ %233, %231 ], [ %301, %300 ], [ %226, %225 ]
  %304 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 3
  %305 = icmp eq i32 %303, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %302
  %307 = load ptr, ptr %95, align 4
  call void @kfree(ptr noundef %307) #16
  br label %343

308:                                              ; preds = %302
  %309 = getelementptr inbounds %struct.nvram_parser, ptr %6, i32 0, i32 10
  %310 = load i8, ptr %309, align 2, !range !9
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %308
  %313 = load ptr, ptr %95, align 4
  %314 = getelementptr i8, ptr %313, i32 %303
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %314, ptr noundef nonnull align 1 dereferenceable(13) @.str.15, i32 13, i1 false) #16
  %315 = load i32, ptr %304, align 4
  %316 = add i32 %315, 13
  store i32 %316, ptr %304, align 4
  %317 = load ptr, ptr %95, align 4
  %318 = getelementptr i8, ptr %317, i32 %316
  store i8 0, ptr %318, align 1
  %319 = load i32, ptr %304, align 4
  %320 = add i32 %319, 1
  br label %321

321:                                              ; preds = %312, %308
  %322 = phi i32 [ %303, %308 ], [ %320, %312 ]
  %323 = add i32 %322, 4
  %324 = and i32 %323, -4
  %325 = icmp eq i32 %322, %324
  br i1 %325, label %332, label %326

326:                                              ; preds = %326, %321
  %327 = phi i32 [ %330, %326 ], [ %322, %321 ]
  %328 = load ptr, ptr %95, align 4
  %329 = getelementptr i8, ptr %328, i32 %327
  store i8 0, ptr %329, align 1
  %330 = add i32 %327, 1
  %331 = icmp eq i32 %330, %324
  br i1 %331, label %332, label %326

332:                                              ; preds = %326, %321
  %333 = phi i32 [ %322, %321 ], [ %324, %326 ]
  %334 = lshr i32 %333, 2
  %335 = xor i32 %334, -1
  %336 = shl i32 %335, 16
  %337 = and i32 %334, 65535
  %338 = or i32 %336, %337
  %339 = load ptr, ptr %95, align 4
  %340 = getelementptr i8, ptr %339, i32 %333
  store i32 %338, ptr %340, align 1
  %341 = add i32 %324, 4
  %342 = load ptr, ptr %95, align 4
  br label %343

343:                                              ; preds = %332, %306, %81
  %344 = phi i32 [ 0, %81 ], [ 0, %306 ], [ %341, %332 ]
  %345 = phi ptr [ null, %81 ], [ null, %306 ], [ %342, %332 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #16
  br i1 %83, label %346, label %347

346:                                              ; preds = %343
  call void @vfree(ptr noundef nonnull %85) #16
  br i1 %84, label %348, label %349

347:                                              ; preds = %343
  br i1 %84, label %348, label %349

348:                                              ; preds = %347, %346
  call void @kfree(ptr noundef nonnull %85) #16
  br label %349

349:                                              ; preds = %348, %347, %346
  call void @release_firmware(ptr noundef %0) #16
  %350 = icmp eq ptr %345, null
  br i1 %350, label %351, label %357

351:                                              ; preds = %349, %78
  %352 = phi i32 [ 0, %78 ], [ %344, %349 ]
  %353 = getelementptr %struct.brcmf_fw_request, ptr %10, i32 0, i32 4, i32 %12, i32 2
  %354 = load i16, ptr %353, align 4
  %355 = and i16 %354, 1
  %356 = icmp eq i16 %355, 0
  br i1 %356, label %362, label %357

357:                                              ; preds = %351, %349
  %358 = phi ptr [ null, %351 ], [ %345, %349 ]
  %359 = phi i32 [ %352, %351 ], [ %344, %349 ]
  %360 = getelementptr %struct.brcmf_fw_request, ptr %10, i32 0, i32 4, i32 %12, i32 3
  store ptr %358, ptr %360, align 4
  %361 = getelementptr inbounds %struct.anon.119, ptr %360, i32 0, i32 1
  store i32 %359, ptr %361, align 4
  br label %362

362:                                              ; preds = %357, %351, %58
  %363 = phi i32 [ 0, %357 ], [ -2, %351 ], [ -2, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %374

364:                                              ; preds = %2
  %365 = icmp eq ptr %0, null
  br i1 %365, label %374, label %366

366:                                              ; preds = %364
  %367 = getelementptr %struct.brcmf_fw_request, ptr %10, i32 0, i32 4, i32 %12, i32 3
  store ptr %0, ptr %367, align 4
  br label %374

368:                                              ; preds = %2
  %369 = tail call i32 @net_ratelimit() #16
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %368
  %372 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fw_complete_request, ptr noundef nonnull @.str.4, i32 noundef %372) #16
  br label %373

373:                                              ; preds = %371, %368
  tail call void @release_firmware(ptr noundef %0) #16
  br label %374

374:                                              ; preds = %373, %366, %364, %362
  %375 = phi i32 [ -22, %373 ], [ 0, %366 ], [ %363, %362 ], [ -2, %364 ]
  %376 = getelementptr %struct.brcmf_fw_request, ptr %10, i32 0, i32 4, i32 %12, i32 2
  %377 = load i16, ptr %376, align 4
  %378 = and i16 %377, 1
  %379 = icmp eq i16 %378, 0
  %380 = select i1 %379, i32 %375, i32 0
  ret i32 %380
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bcm47xx_nvram_get_contents(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_nvram_handle_idle(ptr nocapture noundef %0) #10 {
  %2 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %8 [
    i8 10, label %18
    i8 32, label %13
    i8 13, label %13
    i8 9, label %13
    i8 0, label %13
    i8 35, label %18
  ]

8:                                                ; preds = %1
  %9 = add i8 %7, -32
  %10 = icmp ult i8 %9, 95
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 7
  store i32 %5, ptr %12, align 4
  br label %18

13:                                               ; preds = %8, %1, %1, %1, %1
  %14 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = add i32 %5, 1
  store i32 %17, ptr %4, align 4
  br label %18

18:                                               ; preds = %13, %11, %1, %1
  %19 = phi i32 [ 0, %13 ], [ 1, %11 ], [ 3, %1 ], [ 3, %1 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_nvram_handle_key(ptr nocapture noundef %0) #11 {
  %2 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 61
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %3, i32 %11
  %13 = tail call i32 @strncmp(ptr noundef %12, ptr noundef nonnull dereferenceable(5) @.str.8, i32 noundef 4)
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 3, i32 2
  %16 = tail call i32 @strncmp(ptr noundef %12, ptr noundef nonnull dereferenceable(8) @.str.9, i32 noundef 7)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 8
  store i8 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %9
  %21 = tail call i32 @strncmp(ptr noundef %12, ptr noundef nonnull dereferenceable(6) @.str.10, i32 noundef 5)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 9
  store i8 1, ptr %24, align 1
  br label %25

25:                                               ; preds = %23, %20
  %26 = tail call i32 @strncmp(ptr noundef %12, ptr noundef nonnull dereferenceable(9) @.str.11, i32 noundef 8)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 10
  store i8 1, ptr %29, align 2
  br label %36

30:                                               ; preds = %1
  %31 = load i32, ptr %0, align 4
  %32 = icmp eq i8 %7, 35
  %33 = add i8 %7, -127
  %34 = icmp ult i8 %33, -94
  %35 = or i1 %32, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30, %28, %25
  %37 = phi i32 [ %15, %28 ], [ %15, %25 ], [ %31, %30 ]
  %38 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  %41 = add i32 %5, 1
  store i32 %41, ptr %4, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i32 [ %37, %36 ], [ 3, %30 ]
  ret i32 %43
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_nvram_handle_value(ptr nocapture noundef %0) #12 {
  %2 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = icmp ne i8 %7, 35
  %9 = add i8 %7, -32
  %10 = icmp ult i8 %9, 95
  %11 = and i1 %8, %10
  br i1 %11, label %32, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %3, i32 %14
  %16 = ptrtoint ptr %6 to i32
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %16, %17
  %19 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -63999
  %22 = add i32 %21, %18
  %23 = icmp ult i32 %22, -64000
  br i1 %23, label %40, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %20
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr align 1 %15, i32 %18, i1 false)
  %28 = load i32, ptr %19, align 4
  %29 = add i32 %28, %18
  store i32 %29, ptr %19, align 4
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr i8, ptr %30, i32 %29
  store i8 0, ptr %31, align 1
  br label %35

32:                                               ; preds = %1
  %33 = add i32 %5, 1
  store i32 %33, ptr %4, align 4
  %34 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 5
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi ptr [ %34, %32 ], [ %19, %24 ]
  %37 = phi i32 [ 2, %32 ], [ 0, %24 ]
  %38 = load i32, ptr %36, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %36, align 4
  br label %40

40:                                               ; preds = %35, %12
  %41 = phi i32 [ 4, %12 ], [ %37, %35 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_nvram_handle_comment(ptr nocapture noundef %0) #11 {
  %2 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 %5
  %7 = tail call ptr @strchr(ptr noundef %6, i32 noundef 10)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @strlen(ptr %6)
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %1
  %14 = phi ptr [ %7, %1 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.nvram_parser, ptr %0, i32 0, i32 5
  store i32 1, ptr %18, align 4
  %19 = ptrtoint ptr %14 to i32
  %20 = ptrtoint ptr %6 to i32
  %21 = add i32 %5, 1
  %22 = sub i32 %21, %20
  %23 = add i32 %22, %19
  store i32 %23, ptr %4, align 4
  br label %24

24:                                               ; preds = %13, %9
  %25 = phi i32 [ 0, %13 ], [ 4, %9 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_nvram_handle_end(ptr nocapture noundef readnone %0) #13 {
  ret i32 4
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
