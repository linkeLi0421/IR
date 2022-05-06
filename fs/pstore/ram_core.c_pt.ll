; ModuleID = '/llk/IR/fs/pstore/ram_core.c_pt.bc'
source_filename = "../fs/pstore/ram_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.persistent_ram_zone = type { i32, i32, ptr, ptr, i32, i32, %struct.raw_spinlock, ptr, i32, ptr, ptr, ptr, i32, i32, %struct.persistent_ram_ecc_info, ptr, i32 }
%struct.persistent_ram_ecc_info = type { i32, i32, i32, i32, ptr }
%struct.persistent_ram_buffer = type { i32, %struct.atomic_t, %struct.atomic_t, [0 x i8] }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.37, %struct.atomic_t }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.37 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [46 x i8] c"\0A%d Corrected bytes, %d unrecoverable blocks\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\0ANo errors detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\013ramoops: failed to allocate buffer\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"\013ramoops: failed to allocate persistent ram zone\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"\013ramoops: %s: Failed to map 0x%llx pages at 0x%llx\0A\00", align 1
@__func__.persistent_ram_buffer_map = private unnamed_addr constant [26 x i8] c"persistent_ram_buffer_map\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"\013ramoops: invalid mem_type=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"\013ramoops: %s: Failed to allocate array for %u pages\0A\00", align 1
@__func__.persistent_ram_vmap = private unnamed_addr constant [20 x i8] c"persistent_ram_vmap\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"ramoops\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"\013ramoops: request mem region (%s 0x%llx@0x%llx) failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\014ramoops: ECC failed %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"\016ramoops: found existing invalid buffer, size %zu, start %zu\0A\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"\013ramoops: %s: invalid ecc_size %u (total %zu, buffer size %zu)\0A\00", align 1
@__func__.persistent_ram_init_ecc = private unnamed_addr constant [24 x i8] c"persistent_ram_init_ecc\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"\016ramoops: init_rs failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"\013ramoops: cannot allocate ECC parity workspace\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"\016ramoops: error in header, %d\0A\00", align 1
@persistent_ram_init_ecc._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.17 = private unnamed_addr constant [42 x i8] c"\016ramoops: uncorrectable error in header\0A\00", align 1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @persistent_ram_ecc_string(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %12)
  br label %19

17:                                               ; preds = %7
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.1)
  br label %19

19:                                               ; preds = %17, %15, %3
  %20 = phi i32 [ 0, %3 ], [ %16, %15 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @persistent_ram_save_old(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %3, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %3, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %93, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %83

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14
  %15 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %78, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %3, i32 0, i32 3
  %20 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = load volatile i32, ptr %4, align 4
  %23 = getelementptr i8, ptr %19, i32 %22
  %24 = icmp ult ptr %19, %23
  br i1 %24, label %25, label %78

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 8
  %27 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 4
  %28 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 11
  %29 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 13
  %30 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 12
  %31 = load i32, ptr %14, align 4
  br label %32

32:                                               ; preds = %68, %25
  %33 = phi i32 [ %16, %25 ], [ %71, %68 ]
  %34 = phi i32 [ %31, %25 ], [ %69, %68 ]
  %35 = phi ptr [ %19, %25 ], [ %70, %68 ]
  %36 = phi ptr [ %21, %25 ], [ %72, %68 ]
  %37 = getelementptr i8, ptr %35, i32 %34
  %38 = load i32, ptr %26, align 4
  %39 = getelementptr i8, ptr %19, i32 %38
  %40 = icmp ugt ptr %37, %39
  %41 = ptrtoint ptr %39 to i32
  %42 = ptrtoint ptr %35 to i32
  %43 = sub i32 %41, %42
  %44 = select i1 %40, i32 %43, i32 %34
  %45 = icmp sgt i32 %33, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %46, %32
  %47 = phi i32 [ %53, %46 ], [ 0, %32 ]
  %48 = getelementptr i8, ptr %36, i32 %47
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i16
  %51 = load ptr, ptr %27, align 4
  %52 = getelementptr i16, ptr %51, i32 %47
  store i16 %50, ptr %52, align 2
  %53 = add nuw nsw i32 %47, 1
  %54 = load i32, ptr %15, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %46, label %56

56:                                               ; preds = %46, %32
  %57 = load ptr, ptr %28, align 4
  %58 = load ptr, ptr %27, align 4
  %59 = tail call i32 @decode_rs8(ptr noundef %57, ptr noundef %35, ptr noundef %58, i32 noundef %44, ptr noundef null, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #11
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = icmp slt i32 %59, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %61, %56
  %64 = phi ptr [ %30, %56 ], [ %29, %61 ]
  %65 = phi i32 [ %59, %56 ], [ 1, %61 ]
  %66 = load i32, ptr %64, align 4
  %67 = add i32 %66, %65
  store i32 %67, ptr %64, align 4
  br label %68

68:                                               ; preds = %63, %61
  %69 = load i32, ptr %14, align 4
  %70 = getelementptr i8, ptr %35, i32 %69
  %71 = load i32, ptr %15, align 4
  %72 = getelementptr i8, ptr %36, i32 %71
  %73 = load ptr, ptr %2, align 4
  %74 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %73, i32 0, i32 2
  %75 = load volatile i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %19, i32 %75
  %77 = icmp ult ptr %70, %76
  br i1 %77, label %32, label %78

78:                                               ; preds = %68, %18, %13
  %79 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef 3264) #12
  store ptr %79, ptr %10, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %93

83:                                               ; preds = %78, %9
  %84 = phi ptr [ %79, %78 ], [ %11, %9 ]
  %85 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 16
  store i32 %5, ptr %85, align 4
  %86 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %3, i32 0, i32 3
  %87 = getelementptr %struct.persistent_ram_buffer, ptr %3, i32 0, i32 3, i32 %7
  %88 = sub i32 %5, %7
  tail call void @mmiocpy(ptr noundef nonnull %84, ptr noundef %87, i32 noundef %88) #11
  %89 = load ptr, ptr %10, align 4
  %90 = getelementptr i8, ptr %89, i32 %5
  %91 = sub i32 0, %7
  %92 = getelementptr i8, ptr %90, i32 %91
  tail call void @mmiocpy(ptr noundef %92, ptr noundef %86, i32 noundef %7) #11
  br label %93

93:                                               ; preds = %83, %81, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @persistent_ram_write(ptr noundef %0, ptr noundef %1, i32 noundef returned %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, %2
  br i1 %6, label %7, label %10, !prof !8

7:                                                ; preds = %3
  %8 = sub i32 %2, %5
  %9 = getelementptr i8, ptr %1, i32 %8
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %1, %3 ]
  %12 = phi i32 [ %5, %7 ], [ %2, %3 ]
  %13 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 6
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #11
  %20 = load i32, ptr %4, align 4
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %5, %10 ], [ %20, %17 ]
  %23 = phi i32 [ 0, %10 ], [ %19, %17 ]
  %24 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %25, i32 0, i32 2
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %22
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = add i32 %27, %12
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %22) #11
  store volatile i32 %31, ptr %26, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i32, ptr %13, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %23) #11
  %38 = load i32, ptr %13, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i32 [ %33, %32 ], [ %38, %36 ]
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 6
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %44) #11
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ 0, %39 ], [ %45, %43 ]
  %48 = load ptr, ptr %24, align 4
  %49 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %48, i32 0, i32 1
  %50 = load volatile i32, ptr %49, align 4
  %51 = add i32 %50, %12
  %52 = load i32, ptr %4, align 4
  br label %53

53:                                               ; preds = %53, %46
  %54 = phi i32 [ %51, %46 ], [ %56, %53 ]
  %55 = icmp ult i32 %54, %52
  %56 = sub i32 %54, %52
  br i1 %55, label %57, label %53, !prof !9

57:                                               ; preds = %53
  store volatile i32 %54, ptr %49, align 4
  %58 = load i32, ptr %13, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %47) #11
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i32, ptr %4, align 4
  %65 = sub i32 %64, %50
  %66 = icmp sgt i32 %12, %65
  br i1 %66, label %67, label %70, !prof !8

67:                                               ; preds = %63
  tail call fastcc void @persistent_ram_update(ptr noundef %0, ptr noundef %11, i32 noundef %50, i32 noundef %65)
  %68 = getelementptr i8, ptr %11, i32 %65
  %69 = sub i32 %12, %65
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi ptr [ %68, %67 ], [ %11, %63 ]
  %72 = phi i32 [ %69, %67 ], [ %12, %63 ]
  %73 = phi i32 [ 0, %67 ], [ %50, %63 ]
  %74 = load ptr, ptr %24, align 4
  %75 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %74, i32 0, i32 3
  %76 = getelementptr i8, ptr %75, i32 %73
  tail call void @mmiocpy(ptr noundef %76, ptr noundef %71, i32 noundef %72) #11
  %77 = load ptr, ptr %24, align 4
  %78 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %77, i32 0, i32 3
  %79 = load i32, ptr %4, align 4
  %80 = getelementptr i8, ptr %78, i32 %79
  %81 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %154, label %86

86:                                               ; preds = %70
  %87 = sub i32 0, %82
  %88 = and i32 %73, %87
  %89 = getelementptr i8, ptr %78, i32 %88
  %90 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 9
  %91 = load ptr, ptr %90, align 4
  %92 = udiv i32 %73, %82
  %93 = mul i32 %92, %84
  %94 = getelementptr i8, ptr %91, i32 %93
  %95 = ptrtoint ptr %80 to i32
  %96 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 4
  %97 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 11
  %98 = getelementptr i8, ptr %78, i32 %73
  %99 = getelementptr i8, ptr %98, i32 %72
  br label %100

100:                                              ; preds = %127, %86
  %101 = phi i32 [ %84, %86 ], [ %128, %127 ]
  %102 = phi ptr [ %89, %86 ], [ %105, %127 ]
  %103 = phi ptr [ %94, %86 ], [ %129, %127 ]
  %104 = phi i32 [ %82, %86 ], [ %109, %127 ]
  %105 = getelementptr i8, ptr %102, i32 %82
  %106 = icmp ugt ptr %105, %80
  %107 = ptrtoint ptr %102 to i32
  %108 = sub i32 %95, %107
  %109 = select i1 %106, i32 %108, i32 %104
  %110 = load ptr, ptr %96, align 4
  %111 = shl i32 %101, 1
  tail call void @llvm.memset.p0.i32(ptr align 2 %110, i8 0, i32 %111, i1 false) #11
  %112 = load ptr, ptr %97, align 4
  %113 = load ptr, ptr %96, align 4
  %114 = tail call i32 @encode_rs8(ptr noundef %112, ptr noundef %102, i32 noundef %109, ptr noundef %113, i16 noundef zeroext 0) #11
  %115 = load i32, ptr %83, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %117, %100
  %118 = phi i32 [ %124, %117 ], [ 0, %100 ]
  %119 = load ptr, ptr %96, align 4
  %120 = getelementptr i16, ptr %119, i32 %118
  %121 = load i16, ptr %120, align 2
  %122 = trunc i16 %121 to i8
  %123 = getelementptr i8, ptr %103, i32 %118
  store i8 %122, ptr %123, align 1
  %124 = add nuw nsw i32 %118, 1
  %125 = load i32, ptr %83, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %117, label %127

127:                                              ; preds = %117, %100
  %128 = phi i32 [ %115, %100 ], [ %125, %117 ]
  %129 = getelementptr i8, ptr %103, i32 %84
  %130 = icmp ult ptr %105, %99
  br i1 %130, label %100, label %131

131:                                              ; preds = %127
  %132 = icmp eq i32 %128, 0
  br i1 %132, label %154, label %133

133:                                              ; preds = %131
  %134 = load ptr, ptr %24, align 4
  %135 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 10
  %136 = load ptr, ptr %135, align 4
  %137 = load ptr, ptr %96, align 4
  %138 = shl i32 %128, 1
  tail call void @llvm.memset.p0.i32(ptr align 2 %137, i8 0, i32 %138, i1 false) #11
  %139 = load ptr, ptr %97, align 4
  %140 = load ptr, ptr %96, align 4
  %141 = tail call i32 @encode_rs8(ptr noundef %139, ptr noundef %134, i32 noundef 12, ptr noundef %140, i16 noundef zeroext 0) #11
  %142 = load i32, ptr %83, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %144, %133
  %145 = phi i32 [ %151, %144 ], [ 0, %133 ]
  %146 = load ptr, ptr %96, align 4
  %147 = getelementptr i16, ptr %146, i32 %145
  %148 = load i16, ptr %147, align 2
  %149 = trunc i16 %148 to i8
  %150 = getelementptr i8, ptr %136, i32 %145
  store i8 %149, ptr %150, align 1
  %151 = add nuw nsw i32 %145, 1
  %152 = load i32, ptr %83, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %144, label %154

154:                                              ; preds = %144, %133, %131, %70
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @persistent_ram_update(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %6, i32 0, i32 3
  %8 = getelementptr i8, ptr %7, i32 %2
  tail call void @mmiocpy(ptr noundef %8, ptr noundef %1, i32 noundef %3) #11
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %4
  %20 = sub i32 0, %15
  %21 = and i32 %20, %2
  %22 = getelementptr i8, ptr %10, i32 %21
  %23 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = udiv i32 %2, %15
  %26 = mul i32 %25, %17
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = ptrtoint ptr %13 to i32
  %29 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 4
  %30 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 11
  %31 = getelementptr i8, ptr %10, i32 %2
  %32 = getelementptr i8, ptr %31, i32 %3
  br label %33

33:                                               ; preds = %60, %19
  %34 = phi i32 [ %17, %19 ], [ %61, %60 ]
  %35 = phi ptr [ %22, %19 ], [ %38, %60 ]
  %36 = phi ptr [ %27, %19 ], [ %62, %60 ]
  %37 = phi i32 [ %15, %19 ], [ %42, %60 ]
  %38 = getelementptr i8, ptr %35, i32 %15
  %39 = icmp ugt ptr %38, %13
  %40 = ptrtoint ptr %35 to i32
  %41 = sub i32 %28, %40
  %42 = select i1 %39, i32 %41, i32 %37
  %43 = load ptr, ptr %29, align 4
  %44 = shl i32 %34, 1
  tail call void @llvm.memset.p0.i32(ptr align 2 %43, i8 0, i32 %44, i1 false) #11
  %45 = load ptr, ptr %30, align 4
  %46 = load ptr, ptr %29, align 4
  %47 = tail call i32 @encode_rs8(ptr noundef %45, ptr noundef %35, i32 noundef %42, ptr noundef %46, i16 noundef zeroext 0) #11
  %48 = load i32, ptr %16, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %50, %33
  %51 = phi i32 [ %57, %50 ], [ 0, %33 ]
  %52 = load ptr, ptr %29, align 4
  %53 = getelementptr i16, ptr %52, i32 %51
  %54 = load i16, ptr %53, align 2
  %55 = trunc i16 %54 to i8
  %56 = getelementptr i8, ptr %36, i32 %51
  store i8 %55, ptr %56, align 1
  %57 = add nuw nsw i32 %51, 1
  %58 = load i32, ptr %16, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %50, label %60

60:                                               ; preds = %50, %33
  %61 = phi i32 [ %48, %33 ], [ %58, %50 ]
  %62 = getelementptr i8, ptr %36, i32 %17
  %63 = icmp ult ptr %38, %32
  br i1 %63, label %33, label %64

64:                                               ; preds = %60, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @persistent_ram_write_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, %2
  br i1 %6, label %7, label %10, !prof !8

7:                                                ; preds = %3
  %8 = sub i32 %2, %5
  %9 = getelementptr i8, ptr %1, i32 %8
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %1, %3 ]
  %12 = phi i32 [ %5, %7 ], [ %2, %3 ]
  %13 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 6
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #11
  %20 = load i32, ptr %4, align 4
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %5, %10 ], [ %20, %17 ]
  %23 = phi i32 [ 0, %10 ], [ %19, %17 ]
  %24 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %25, i32 0, i32 2
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %22
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = add i32 %27, %12
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %22) #11
  store volatile i32 %31, ptr %26, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i32, ptr %13, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %23) #11
  %38 = load i32, ptr %13, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i32 [ %33, %32 ], [ %38, %36 ]
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 6
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %44) #11
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ 0, %39 ], [ %45, %43 ]
  %48 = load ptr, ptr %24, align 4
  %49 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %48, i32 0, i32 1
  %50 = load volatile i32, ptr %49, align 4
  %51 = add i32 %50, %12
  %52 = load i32, ptr %4, align 4
  br label %53

53:                                               ; preds = %53, %46
  %54 = phi i32 [ %51, %46 ], [ %56, %53 ]
  %55 = icmp ult i32 %54, %52
  %56 = sub i32 %54, %52
  br i1 %55, label %57, label %53, !prof !9

57:                                               ; preds = %53
  store volatile i32 %54, ptr %49, align 4
  %58 = load i32, ptr %13, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %47) #11
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i32, ptr %4, align 4
  %65 = sub i32 %64, %50
  %66 = icmp sgt i32 %12, %65
  br i1 %66, label %67, label %72, !prof !8

67:                                               ; preds = %63
  %68 = tail call fastcc i32 @persistent_ram_update_user(ptr noundef %0, ptr noundef %11, i32 noundef %50, i32 noundef %65)
  %69 = getelementptr i8, ptr %11, i32 %65
  %70 = sub i32 %12, %65
  %71 = icmp eq i32 %68, 0
  br i1 %71, label %72, label %77, !prof !9

72:                                               ; preds = %67, %63
  %73 = phi i32 [ 0, %67 ], [ %50, %63 ]
  %74 = phi i32 [ %70, %67 ], [ %12, %63 ]
  %75 = phi ptr [ %69, %67 ], [ %11, %63 ]
  %76 = tail call fastcc i32 @persistent_ram_update_user(ptr noundef %0, ptr noundef %75, i32 noundef %73, i32 noundef %74)
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i32 [ %76, %72 ], [ %68, %67 ]
  %79 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %24, align 4
  %84 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 10
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 4
  %87 = load ptr, ptr %86, align 4
  %88 = shl i32 %80, 1
  tail call void @llvm.memset.p0.i32(ptr align 2 %87, i8 0, i32 %88, i1 false) #11
  %89 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 11
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %86, align 4
  %92 = tail call i32 @encode_rs8(ptr noundef %90, ptr noundef %83, i32 noundef 12, ptr noundef %91, i16 noundef zeroext 0) #11
  %93 = load i32, ptr %79, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %95, %82
  %96 = phi i32 [ %102, %95 ], [ 0, %82 ]
  %97 = load ptr, ptr %86, align 4
  %98 = getelementptr i16, ptr %97, i32 %96
  %99 = load i16, ptr %98, align 2
  %100 = trunc i16 %99 to i8
  %101 = getelementptr i8, ptr %85, i32 %96
  store i8 %100, ptr %101, align 1
  %102 = add nuw nsw i32 %96, 1
  %103 = load i32, ptr %79, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %95, label %105

105:                                              ; preds = %95, %82, %77
  %106 = icmp eq i32 %78, 0
  %107 = select i1 %106, i32 %2, i32 %78, !prof !9
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @persistent_ram_update_user(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %6, i32 0, i32 3
  %8 = getelementptr i8, ptr %7, i32 %2
  %9 = icmp slt i32 %3, 0
  %10 = load i1, ptr @check_copy_size.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %4
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %14

14:                                               ; preds = %13, %4
  br i1 %9, label %32, label %15, !prof !8

15:                                               ; preds = %14
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %3, i32 -1090519040) #14, !srcloc !10
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26, !prof !9

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #11
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #15, !srcloc !11
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  %25 = tail call i32 @arm_copy_from_user(ptr noundef %8, ptr noundef %1, i32 noundef %3) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #11, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !13
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %25, %19 ], [ %3, %15 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29, !prof !9

29:                                               ; preds = %26
  %30 = sub i32 %3, %27
  %31 = getelementptr i8, ptr %8, i32 %30
  tail call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %27, i1 false) #11
  br label %32

32:                                               ; preds = %29, %26, %14
  %33 = phi i32 [ 0, %26 ], [ -14, %14 ], [ -14, %29 ]
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %89, label %44

44:                                               ; preds = %32
  %45 = sub i32 0, %40
  %46 = and i32 %45, %2
  %47 = getelementptr i8, ptr %35, i32 %46
  %48 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  %50 = udiv i32 %2, %40
  %51 = mul i32 %50, %42
  %52 = getelementptr i8, ptr %49, i32 %51
  %53 = ptrtoint ptr %38 to i32
  %54 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 4
  %55 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 11
  %56 = getelementptr i8, ptr %35, i32 %2
  %57 = getelementptr i8, ptr %56, i32 %3
  br label %58

58:                                               ; preds = %85, %44
  %59 = phi i32 [ %42, %44 ], [ %86, %85 ]
  %60 = phi ptr [ %47, %44 ], [ %63, %85 ]
  %61 = phi ptr [ %52, %44 ], [ %87, %85 ]
  %62 = phi i32 [ %40, %44 ], [ %67, %85 ]
  %63 = getelementptr i8, ptr %60, i32 %40
  %64 = icmp ugt ptr %63, %38
  %65 = ptrtoint ptr %60 to i32
  %66 = sub i32 %53, %65
  %67 = select i1 %64, i32 %66, i32 %62
  %68 = load ptr, ptr %54, align 4
  %69 = shl i32 %59, 1
  tail call void @llvm.memset.p0.i32(ptr align 2 %68, i8 0, i32 %69, i1 false) #11
  %70 = load ptr, ptr %55, align 4
  %71 = load ptr, ptr %54, align 4
  %72 = tail call i32 @encode_rs8(ptr noundef %70, ptr noundef %60, i32 noundef %67, ptr noundef %71, i16 noundef zeroext 0) #11
  %73 = load i32, ptr %41, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %75, %58
  %76 = phi i32 [ %82, %75 ], [ 0, %58 ]
  %77 = load ptr, ptr %54, align 4
  %78 = getelementptr i16, ptr %77, i32 %76
  %79 = load i16, ptr %78, align 2
  %80 = trunc i16 %79 to i8
  %81 = getelementptr i8, ptr %61, i32 %76
  store i8 %80, ptr %81, align 1
  %82 = add nuw nsw i32 %76, 1
  %83 = load i32, ptr %41, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %75, label %85

85:                                               ; preds = %75, %58
  %86 = phi i32 [ %73, %58 ], [ %83, %75 ]
  %87 = getelementptr i8, ptr %61, i32 %42
  %88 = icmp ult ptr %63, %57
  br i1 %88, label %58, label %89

89:                                               ; preds = %85, %32
  ret i32 %33
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @persistent_ram_old_size(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @persistent_ram_old(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @persistent_ram_free_old(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #11
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 16
  store i32 0, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @persistent_ram_zap(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %3, i32 0, i32 1
  store volatile i32 0, ptr %4, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %5, i32 0, i32 2
  store volatile i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = shl i32 %8, 1
  tail call void @llvm.memset.p0.i32(ptr align 2 %15, i8 0, i32 %16, i1 false) #11
  %17 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %14, align 4
  %20 = tail call i32 @encode_rs8(ptr noundef %18, ptr noundef %11, i32 noundef 12, ptr noundef %19, i16 noundef zeroext 0) #11
  %21 = load i32, ptr %7, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %23, %10
  %24 = phi i32 [ %30, %23 ], [ 0, %10 ]
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr i16, ptr %25, i32 %24
  %27 = load i16, ptr %26, align 2
  %28 = trunc i16 %27 to i8
  %29 = getelementptr i8, ptr %13, i32 %24
  store i8 %28, ptr %29, align 1
  %30 = add nuw nsw i32 %24, 1
  %31 = load i32, ptr %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %23, label %33

33:                                               ; preds = %23, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @persistent_ram_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 4
  %9 = lshr i32 %8, 12
  %10 = tail call i32 @pfn_valid(i32 noundef %9) #11
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %4, align 4
  br i1 %11, label %18, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr %0, align 4
  %15 = and i32 %14, 4095
  %16 = sub nsw i32 0, %15
  %17 = getelementptr i8, ptr %12, i32 %16
  tail call void @vunmap(ptr noundef %17) #11
  br label %22

18:                                               ; preds = %7
  tail call void @iounmap(ptr noundef %12) #11
  %19 = load i32, ptr %0, align 4
  %20 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %21) #11
  br label %22

22:                                               ; preds = %18, %13
  store ptr null, ptr %4, align 4
  br label %23

23:                                               ; preds = %22, %3
  %24 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @free_rs(ptr noundef nonnull %25) #11
  store ptr null, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 14, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %30) #11
  store ptr null, ptr %29, align 4
  %31 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #11
  store ptr null, ptr %31, align 4
  %33 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 16
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.persistent_ram_zone, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  tail call void @kfree(ptr noundef %35) #11
  tail call void @kfree(ptr noundef nonnull %0) #11
  br label %36

36:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_rs(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @persistent_ram_new(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #2 {
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 84) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %250

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 6
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 5
  store i32 %5, ptr %15, align 4
  %16 = tail call noalias ptr @kstrdup(ptr noundef %6, i32 noundef 3264) #11
  %17 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  store i32 %0, ptr %9, align 8
  %18 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = lshr i32 %0, 12
  %20 = tail call i32 @pfn_valid(i32 noundef %19) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %13
  %23 = and i32 %0, 4095
  %24 = add i32 %1, 4095
  %25 = add i32 %24, %23
  %26 = lshr i32 %25, 12
  switch i32 %4, label %38 [
    i32 2, label %27
    i32 1, label %30
    i32 0, label %34
  ]

27:                                               ; preds = %22
  %28 = load i32, ptr @pgprot_kernel, align 4
  %29 = or i32 %28, 512
  br label %40

30:                                               ; preds = %22
  %31 = load i32, ptr @pgprot_kernel, align 4
  %32 = and i32 %31, -573
  %33 = or i32 %32, 512
  br label %40

34:                                               ; preds = %22
  %35 = load i32, ptr @pgprot_kernel, align 4
  %36 = and i32 %35, -573
  %37 = or i32 %36, 516
  br label %40

38:                                               ; preds = %22
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %4) #13
  br label %81

40:                                               ; preds = %34, %30, %27
  %41 = phi i32 [ %37, %34 ], [ %33, %30 ], [ %29, %27 ]
  %42 = shl nuw nsw i32 %26, 2
  %43 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %42, i32 noundef 3264) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = icmp ult i32 %25, 4096
  br i1 %46, label %62, label %47

47:                                               ; preds = %45
  %48 = tail call i32 @llvm.umax.i32(i32 %26, i32 1) #11
  %49 = load ptr, ptr @mem_map, align 4
  %50 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %53

51:                                               ; preds = %40
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.persistent_ram_vmap, i32 noundef %26) #13
  br label %81

53:                                               ; preds = %53, %47
  %54 = phi i32 [ 0, %47 ], [ %60, %53 ]
  %55 = add nuw nsw i32 %54, %19
  %56 = and i32 %55, 1048575
  %57 = sub i32 %56, %50
  %58 = getelementptr %struct.page, ptr %49, i32 %57
  %59 = getelementptr ptr, ptr %43, i32 %54
  store ptr %58, ptr %59, align 4
  %60 = add nuw nsw i32 %54, 1
  %61 = icmp eq i32 %60, %48
  br i1 %61, label %62, label %53

62:                                               ; preds = %53, %45
  %63 = tail call ptr @vmap(ptr noundef nonnull %43, i32 noundef %26, i32 noundef 4, i32 noundef %41) #11
  tail call void @kfree(ptr noundef nonnull %43) #11
  %64 = getelementptr i8, ptr %63, i32 %23
  br label %83

65:                                               ; preds = %13
  %66 = load ptr, ptr %17, align 4
  %67 = icmp eq ptr %66, null
  %68 = select i1 %67, ptr @.str.9, ptr %66
  %69 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %0, i32 noundef %1, ptr noundef %68, i32 noundef 0) #11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = zext i32 %1 to i64
  %73 = zext i32 %0 to i64
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %68, i64 noundef %72, i64 noundef %73) #13
  br label %81

75:                                               ; preds = %65
  %76 = icmp eq i32 %4, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %75
  %78 = tail call ptr @ioremap(i32 noundef %0, i32 noundef %1) #11
  br label %83

79:                                               ; preds = %75
  %80 = tail call ptr @ioremap_wc(i32 noundef %0, i32 noundef %1) #11
  br label %83

81:                                               ; preds = %71, %51, %38
  %82 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 2
  store ptr null, ptr %82, align 8
  br label %87

83:                                               ; preds = %79, %77, %62
  %84 = phi ptr [ %64, %62 ], [ %78, %77 ], [ %80, %79 ]
  %85 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 2
  store ptr %84, ptr %85, align 8
  %86 = icmp eq ptr %84, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %83, %81
  %88 = zext i32 %1 to i64
  %89 = zext i32 %0 to i64
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.persistent_ram_buffer_map, i64 noundef %88, i64 noundef %89) #13
  br label %250

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 7
  store ptr %84, ptr %92, align 4
  %93 = add i32 %1, -12
  %94 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 8
  store i32 %93, ptr %94, align 8
  %95 = load i32, ptr %15, align 4
  %96 = icmp eq ptr %3, null
  br i1 %96, label %188, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.persistent_ram_ecc_info, ptr %3, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %188, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %3, align 4
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 128, i32 %102
  %105 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 14
  store i32 %104, ptr %105, align 8
  %106 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 14, i32 1
  store i32 %99, ptr %106, align 4
  %107 = getelementptr inbounds %struct.persistent_ram_ecc_info, ptr %3, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 8, i32 %108
  %111 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 14, i32 2
  store i32 %110, ptr %111, align 8
  %112 = getelementptr inbounds %struct.persistent_ram_ecc_info, ptr %3, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 285, i32 %113
  %116 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 14, i32 3
  store i32 %115, ptr %116, align 4
  %117 = add i32 %104, %99
  %118 = add i32 %104, -1
  %119 = add i32 %118, %93
  %120 = udiv i32 %119, %117
  %121 = add i32 %120, 1
  %122 = mul i32 %121, %99
  %123 = icmp ugt i32 %93, %122
  br i1 %123, label %126, label %124

124:                                              ; preds = %101
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.persistent_ram_init_ecc, i32 noundef %99, i32 noundef %122, i32 noundef %93) #13
  br label %246

126:                                              ; preds = %101
  %127 = sub i32 %93, %122
  store i32 %127, ptr %94, align 8
  %128 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %84, i32 0, i32 3
  %129 = getelementptr i8, ptr %128, i32 %127
  %130 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 9
  store ptr %129, ptr %130, align 4
  %131 = mul i32 %120, %99
  %132 = getelementptr i8, ptr %129, i32 %131
  %133 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 10
  store ptr %132, ptr %133, align 8
  %134 = tail call ptr @init_rs_gfp(i32 noundef %110, i32 noundef %115, i32 noundef 0, i32 noundef 1, i32 noundef %99, i32 noundef 3264) #11
  %135 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 11
  store ptr %134, ptr %135, align 4
  %136 = icmp eq ptr %134, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %126
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %246

139:                                              ; preds = %126
  %140 = load i32, ptr %106, align 4
  %141 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %140, i32 2) #11
  %142 = extractvalue { i32, i1 } %141, 1
  br i1 %142, label %143, label %145, !prof !8

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 14, i32 4
  store ptr null, ptr %144, align 8
  br label %150

145:                                              ; preds = %139
  %146 = extractvalue { i32, i1 } %141, 0
  %147 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %146, i32 noundef 3264) #12
  %148 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 14, i32 4
  store ptr %147, ptr %148, align 8
  %149 = icmp eq ptr %147, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %145, %143
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #13
  br label %246

152:                                              ; preds = %145
  %153 = load i32, ptr %106, align 4
  %154 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 12
  store i32 0, ptr %154, align 8
  %155 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 13
  store i32 0, ptr %155, align 4
  %156 = load ptr, ptr %133, align 8
  %157 = icmp sgt i32 %153, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %158, %152
  %159 = phi ptr [ %168, %158 ], [ %147, %152 ]
  %160 = phi i32 [ %165, %158 ], [ 0, %152 ]
  %161 = getelementptr i8, ptr %156, i32 %160
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i16
  %164 = getelementptr i16, ptr %159, i32 %160
  store i16 %163, ptr %164, align 2
  %165 = add nuw nsw i32 %160, 1
  %166 = load i32, ptr %106, align 4
  %167 = icmp slt i32 %165, %166
  %168 = load ptr, ptr %148, align 8
  br i1 %167, label %158, label %169

169:                                              ; preds = %158, %152
  %170 = phi ptr [ %147, %152 ], [ %168, %158 ]
  %171 = load ptr, ptr %135, align 4
  %172 = tail call i32 @decode_rs8(ptr noundef %171, ptr noundef nonnull %84, ptr noundef %170, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #11
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %172) #13
  br label %183

176:                                              ; preds = %169
  %177 = icmp slt i32 %172, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %176
  %179 = tail call i32 @___ratelimit(ptr noundef nonnull @persistent_ram_init_ecc._rs, ptr noundef nonnull @__func__.persistent_ram_init_ecc) #11
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %183

183:                                              ; preds = %181, %178, %174
  %184 = phi ptr [ %154, %174 ], [ %155, %181 ], [ %155, %178 ]
  %185 = phi i32 [ %172, %174 ], [ 1, %181 ], [ 1, %178 ]
  %186 = load i32, ptr %184, align 4
  %187 = add i32 %186, %185
  store i32 %187, ptr %184, align 4
  br label %188

188:                                              ; preds = %183, %176, %97, %91
  %189 = xor i32 %2, 1128743492
  %190 = load ptr, ptr %92, align 4
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, %189
  br i1 %192, label %193, label %214

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %190, i32 0, i32 2
  %195 = load volatile i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %253, label %197

197:                                              ; preds = %193
  %198 = load volatile i32, ptr %194, align 4
  %199 = load i32, ptr %94, align 8
  %200 = icmp ugt i32 %198, %199
  br i1 %200, label %206, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %190, i32 0, i32 1
  %203 = load volatile i32, ptr %202, align 4
  %204 = load volatile i32, ptr %194, align 4
  %205 = icmp ugt i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %201, %197
  %207 = load volatile i32, ptr %194, align 4
  %208 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %190, i32 0, i32 1
  %209 = load volatile i32, ptr %208, align 4
  %210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %207, i32 noundef %209) #13
  br label %215

211:                                              ; preds = %201
  tail call void @persistent_ram_save_old(ptr noundef %9) #11
  %212 = and i32 %95, 2
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %253, label %215

214:                                              ; preds = %188
  store i32 %189, ptr %190, align 4
  br label %215

215:                                              ; preds = %214, %211, %206
  %216 = load ptr, ptr %92, align 4
  %217 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %216, i32 0, i32 1
  store volatile i32 0, ptr %217, align 4
  %218 = load ptr, ptr %92, align 4
  %219 = getelementptr inbounds %struct.persistent_ram_buffer, ptr %218, i32 0, i32 2
  store volatile i32 0, ptr %219, align 4
  %220 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 14, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %253, label %223

223:                                              ; preds = %215
  %224 = load ptr, ptr %92, align 4
  %225 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 10
  %226 = load ptr, ptr %225, align 8
  %227 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 14, i32 4
  %228 = load ptr, ptr %227, align 8
  %229 = shl i32 %221, 1
  tail call void @llvm.memset.p0.i32(ptr align 2 %228, i8 0, i32 %229, i1 false) #11
  %230 = getelementptr inbounds %struct.persistent_ram_zone, ptr %9, i32 0, i32 11
  %231 = load ptr, ptr %230, align 4
  %232 = load ptr, ptr %227, align 8
  %233 = tail call i32 @encode_rs8(ptr noundef %231, ptr noundef %224, i32 noundef 12, ptr noundef %232, i16 noundef zeroext 0) #11
  %234 = load i32, ptr %220, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %253

236:                                              ; preds = %236, %223
  %237 = phi i32 [ %243, %236 ], [ 0, %223 ]
  %238 = load ptr, ptr %227, align 8
  %239 = getelementptr i16, ptr %238, i32 %237
  %240 = load i16, ptr %239, align 2
  %241 = trunc i16 %240 to i8
  %242 = getelementptr i8, ptr %226, i32 %237
  store i8 %241, ptr %242, align 1
  %243 = add nuw nsw i32 %237, 1
  %244 = load i32, ptr %220, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %236, label %253

246:                                              ; preds = %150, %137, %124
  %247 = phi i32 [ -22, %124 ], [ -22, %137 ], [ -12, %150 ]
  %248 = load ptr, ptr %17, align 4
  %249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %248) #13
  br label %250

250:                                              ; preds = %246, %87, %11
  %251 = phi i32 [ -12, %87 ], [ %247, %246 ], [ -12, %11 ]
  tail call void @persistent_ram_free(ptr noundef %9)
  %252 = inttoptr i32 %251 to ptr
  br label %253

253:                                              ; preds = %250, %236, %223, %215, %211, %193
  %254 = phi ptr [ %252, %250 ], [ %9, %193 ], [ %9, %211 ], [ %9, %215 ], [ %9, %223 ], [ %9, %236 ]
  ret ptr %254
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @decode_rs8(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @encode_rs8(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_rs_gfp(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152067200, i64 2152067225}
!11 = !{i64 4563312}
!12 = !{i64 4563509}
!13 = !{i64 2152048788}
