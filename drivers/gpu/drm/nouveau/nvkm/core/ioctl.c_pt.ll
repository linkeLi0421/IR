; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/ioctl.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.130 = type { i32, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvif_ioctl_sclass_v0 = type { i8, i8, [6 x i8], [0 x %struct.nvif_ioctl_sclass_oclass_v0] }
%struct.nvif_ioctl_sclass_oclass_v0 = type { i32, i16, i16 }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_ioctl_new_v0 = type { i8, [6 x i8], i8, i64, i64, i32, i32, [0 x i8] }
%struct.nvif_ioctl_mthd_v0 = type { i8, i8, [6 x i8], [0 x i8] }
%union.anon.137 = type { i32 }
%struct.nvif_ioctl_rd_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.nvif_ioctl_wr_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.nvif_ioctl_map_v0 = type { i8, i8, [6 x i8], i64, i64, [0 x i8] }
%struct.nvif_ioctl_ntfy_new_v0 = type { i8, i8, i8, [5 x i8], [0 x i8] }
%struct.nvif_ioctl_ntfy_del_v0 = type { i8, i8, [6 x i8] }
%struct.nvif_ioctl_ntfy_get_v0 = type { i8, i8, [6 x i8] }
%struct.nvif_ioctl_ntfy_put_v0 = type { i8, i8, [6 x i8] }

@.str = private unnamed_addr constant [41 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: vers %d type %02x object %016llx owner %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: return %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: object not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: route != owner\0A\00", align 1
@nvkm_ioctl_v0 = internal unnamed_addr constant [13 x %struct.anon.130] [%struct.anon.130 { i32 0, ptr @nvkm_ioctl_nop }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_sclass }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_new }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_del }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_mthd }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_rd }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_wr }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_map }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_unmap }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_ntfy_new }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_ntfy_del }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_ntfy_get }, %struct.anon.130 { i32 0, ptr @nvkm_ioctl_ntfy_put }], align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: nop size %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: nop vers %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: sclass size %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: sclass vers %d count %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: new size %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [105 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: new vers %d handle %08x class %08x route %02x token %llx object %016llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: cannot have children\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: delete size %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: delete\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: mthd size %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: mthd vers %d mthd %02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: rd size %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: rd vers %d size %d addr %016llx\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: wr size %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [75 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: wr vers %d size %d addr %016llx data %08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: map size %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: map vers %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: unmap size %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: unmap\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy new size %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [61 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy new vers %d event %02x\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy del size %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy del vers %d index %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy get size %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy get vers %d index %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy put size %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: ntfy put vers %d index %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %2) #5
  br label %17

17:                                               ; preds = %10, %4
  %18 = icmp ugt i32 %2, 23
  br i1 %18, label %19, label %104

19:                                               ; preds = %17
  %20 = load i8, ptr %1, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %104

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %1, i32 24
  %24 = add i32 %2, -24
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 6
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 3
  %41 = load i8, ptr %40, align 2
  %42 = zext i8 %41 to i32
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef 0, i32 noundef %37, i64 noundef %39, i32 noundef %42) #5
  br label %44

44:                                               ; preds = %29, %22
  %45 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 6
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 3
  %51 = load i8, ptr %50, align 2
  %52 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 4
  %53 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %1, i32 0, i32 5
  %54 = tail call ptr @nvkm_object_search(ptr noundef %0, i64 noundef %46, ptr noundef null) #6
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %70

56:                                               ; preds = %44
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr inbounds %struct.nvkm_client, ptr %57, i32 0, i32 3
  %59 = load i32, ptr %58, align 8
  %60 = icmp ugt i32 %59, 4
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.nvkm_client, ptr %57, i32 0, i32 1
  %63 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %62, i32 noundef %64, i32 noundef %66) #5
  br label %68

68:                                               ; preds = %61, %56
  %69 = ptrtoint ptr %54 to i32
  br label %101

70:                                               ; preds = %44
  %71 = icmp eq i8 %51, -1
  %72 = getelementptr inbounds %struct.nvkm_object, ptr %54, i32 0, i32 7
  %73 = load i8, ptr %72, align 4
  br i1 %71, label %88, label %74

74:                                               ; preds = %70
  %75 = icmp eq i8 %73, %51
  br i1 %75, label %88, label %76

76:                                               ; preds = %74
  %77 = load ptr, ptr %5, align 4
  %78 = getelementptr inbounds %struct.nvkm_client, ptr %77, i32 0, i32 3
  %79 = load i32, ptr %78, align 8
  %80 = icmp ugt i32 %79, 4
  br i1 %80, label %81, label %104

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.nvkm_client, ptr %77, i32 0, i32 1
  %83 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %82, i32 noundef %84, i32 noundef %86) #5
  br label %104

88:                                               ; preds = %74, %70
  %89 = phi i8 [ %51, %74 ], [ %73, %70 ]
  store i8 %89, ptr %52, align 1
  %90 = getelementptr inbounds %struct.nvkm_object, ptr %54, i32 0, i32 8
  %91 = load i64, ptr %90, align 8
  store i64 %91, ptr %53, align 8
  %92 = icmp ult i8 %48, 13
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = getelementptr [13 x %struct.anon.130], ptr @nvkm_ioctl_v0, i32 0, i32 %49
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = getelementptr [13 x %struct.anon.130], ptr @nvkm_ioctl_v0, i32 0, i32 %49, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 %99(ptr noundef %0, ptr noundef %54, ptr noundef %23, i32 noundef %24) #6
  br label %101

101:                                              ; preds = %97, %68
  %102 = phi i32 [ %69, %68 ], [ %100, %97 ]
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %122, label %104

104:                                              ; preds = %101, %93, %88, %81, %76, %19, %17
  %105 = phi i32 [ %102, %101 ], [ -22, %88 ], [ -22, %93 ], [ -13, %76 ], [ -13, %81 ], [ -38, %19 ], [ -38, %17 ]
  %106 = load ptr, ptr %5, align 4
  %107 = getelementptr inbounds %struct.nvkm_client, ptr %106, i32 0, i32 3
  %108 = load i32, ptr %107, align 8
  %109 = icmp ugt i32 %108, 4
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.nvkm_client, ptr %106, i32 0, i32 1
  %112 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %113 = load i32, ptr %112, align 8
  %114 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %105) #5
  br label %117

117:                                              ; preds = %110, %104
  %118 = icmp eq ptr %3, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.nvkm_client, ptr %0, i32 0, i32 6
  %121 = load ptr, ptr %120, align 8
  store ptr %121, ptr %3, align 4
  store ptr null, ptr %120, align 8
  br label %122

122:                                              ; preds = %119, %117, %101
  %123 = phi i32 [ %105, %117 ], [ %105, %119 ], [ 1, %101 ]
  ret i32 %123
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_object_search(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_nop(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %3) #5
  br label %17

17:                                               ; preds = %10, %4
  %18 = icmp ugt i32 %3, 7
  br i1 %18, label %19, label %37

19:                                               ; preds = %17
  %20 = load i64, ptr %2, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = icmp eq i32 %3, 8
  br i1 %23, label %24, label %37

24:                                               ; preds = %22
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %30, i32 noundef %32, i32 noundef %34, i64 noundef 0) #5
  br label %36

36:                                               ; preds = %29, %24
  store i64 256, ptr %2, align 8
  br label %37

37:                                               ; preds = %36, %22, %19, %17
  %38 = phi i32 [ 0, %36 ], [ -38, %17 ], [ -38, %19 ], [ -7, %22 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_sclass(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.nvkm_oclass, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %5, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_client, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = icmp ugt i32 %10, 4
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nvkm_client, ptr %8, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %3) #5
  br label %19

19:                                               ; preds = %12, %4
  %20 = icmp ugt i32 %3, 7
  br i1 %20, label %21, label %82

21:                                               ; preds = %19
  %22 = load i8, ptr %2, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %82

24:                                               ; preds = %21
  %25 = add i32 %3, -8
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = icmp ugt i32 %28, 4
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 1
  %32 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, ptr %2, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef 0, i32 noundef %38) #5
  br label %40

40:                                               ; preds = %30, %24
  %41 = getelementptr inbounds %struct.nvif_ioctl_sclass_v0, ptr %2, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 3
  %45 = icmp eq i32 %25, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %40
  %47 = load ptr, ptr %1, align 8
  %48 = getelementptr inbounds %struct.nvkm_object_func, ptr %47, i32 0, i32 14
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %79, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.nvkm_oclass, ptr %5, i32 0, i32 1
  %53 = getelementptr inbounds %struct.nvkm_oclass, ptr %5, i32 0, i32 1, i32 2
  %54 = getelementptr inbounds %struct.nvkm_oclass, ptr %5, i32 0, i32 1, i32 1
  br label %55

55:                                               ; preds = %73, %51
  %56 = phi ptr [ %49, %51 ], [ %77, %73 ]
  %57 = phi i32 [ 0, %51 ], [ %74, %73 ]
  %58 = call i32 %56(ptr noundef %1, i32 noundef %57, ptr noundef nonnull %5) #6
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %79

60:                                               ; preds = %55
  %61 = load i8, ptr %41, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i32, ptr %53, align 4
  %66 = getelementptr %struct.nvif_ioctl_sclass_v0, ptr %2, i32 0, i32 3, i32 %57
  store i32 %65, ptr %66, align 4
  %67 = load i32, ptr %52, align 4
  %68 = trunc i32 %67 to i16
  %69 = getelementptr %struct.nvif_ioctl_sclass_v0, ptr %2, i32 0, i32 3, i32 %57, i32 1
  store i16 %68, ptr %69, align 4
  %70 = load i32, ptr %54, align 8
  %71 = trunc i32 %70 to i16
  %72 = getelementptr %struct.nvif_ioctl_sclass_v0, ptr %2, i32 0, i32 3, i32 %57, i32 2
  store i16 %71, ptr %72, align 2
  br label %73

73:                                               ; preds = %64, %60
  %74 = add i32 %57, 1
  %75 = load ptr, ptr %1, align 8
  %76 = getelementptr inbounds %struct.nvkm_object_func, ptr %75, i32 0, i32 14
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %55

79:                                               ; preds = %73, %55, %46
  %80 = phi i32 [ 0, %46 ], [ %74, %73 ], [ %57, %55 ]
  %81 = trunc i32 %80 to i8
  store i8 %81, ptr %41, align 1
  br label %82

82:                                               ; preds = %79, %40, %21, %19
  %83 = phi i32 [ -22, %40 ], [ 0, %79 ], [ -38, %21 ], [ -38, %19 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #6
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.nvkm_oclass, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #6
  %7 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_client, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = icmp ugt i32 %10, 4
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nvkm_client, ptr %8, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %3) #5
  br label %19

19:                                               ; preds = %12, %4
  %20 = icmp ugt i32 %3, 31
  br i1 %20, label %21, label %131

21:                                               ; preds = %19
  %22 = load i8, ptr %2, align 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %131

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %2, i32 32
  %26 = add i32 %3, -32
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.nvkm_client, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 8
  %30 = icmp ugt i32 %29, 4
  br i1 %30, label %31, label %49

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.nvkm_client, ptr %27, i32 0, i32 1
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %2, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %2, i32 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %2, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %2, i32 0, i32 3
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %2, i32 0, i32 4
  %47 = load i64, ptr %46, align 8
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef 0, i32 noundef %38, i32 noundef %40, i32 noundef %43, i64 noundef %45, i64 noundef %47) #5
  br label %49

49:                                               ; preds = %31, %24
  %50 = load ptr, ptr %1, align 8
  %51 = getelementptr inbounds %struct.nvkm_object_func, ptr %50, i32 0, i32 14
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %67, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %2, i32 0, i32 5
  %56 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 4
  %57 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %2, i32 0, i32 2
  %58 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 5
  %59 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %2, i32 0, i32 3
  %60 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 6
  %61 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %2, i32 0, i32 4
  %62 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 7
  %63 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 8
  %64 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 9
  %65 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 1, i32 2
  %66 = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %2, i32 0, i32 6
  br label %79

67:                                               ; preds = %49
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr inbounds %struct.nvkm_client, ptr %68, i32 0, i32 3
  %70 = load i32, ptr %69, align 8
  %71 = icmp ugt i32 %70, 4
  br i1 %71, label %72, label %131

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.nvkm_client, ptr %68, i32 0, i32 1
  %74 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %75 = load i32, ptr %74, align 8
  %76 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %73, i32 noundef %75, i32 noundef %77) #5
  br label %131

79:                                               ; preds = %94, %54
  %80 = phi ptr [ %96, %94 ], [ %50, %54 ]
  %81 = phi i32 [ %95, %94 ], [ 0, %54 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i32 72, i1 false)
  %82 = load i32, ptr %55, align 8
  store i32 %82, ptr %56, align 8
  %83 = load i8, ptr %57, align 1
  store i8 %83, ptr %58, align 4
  %84 = load i64, ptr %59, align 8
  store i64 %84, ptr %60, align 8
  %85 = load i64, ptr %61, align 8
  store i64 %85, ptr %62, align 8
  store ptr %0, ptr %63, align 8
  store ptr %1, ptr %64, align 4
  %86 = getelementptr inbounds %struct.nvkm_object_func, ptr %80, i32 0, i32 14
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 %87(ptr noundef %1, i32 noundef %81, ptr noundef nonnull %6) #6
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %131

90:                                               ; preds = %79
  %91 = load i32, ptr %65, align 4
  %92 = load i32, ptr %66, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = add i32 %81, 1
  %96 = load ptr, ptr %1, align 8
  br label %79

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 10
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = call ptr @nvkm_engine_ref(ptr noundef nonnull %99) #6
  store ptr %102, ptr %98, align 8
  %103 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = ptrtoint ptr %102 to i32
  br label %131

106:                                              ; preds = %101, %97
  %107 = load ptr, ptr %6, align 8
  %108 = call i32 %107(ptr noundef nonnull %6, ptr noundef %25, i32 noundef %26, ptr noundef nonnull %5) #6
  call void @nvkm_engine_unref(ptr noundef %98) #6
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = load ptr, ptr %5, align 4
  %112 = call i32 @nvkm_object_init(ptr noundef %111) #6
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load ptr, ptr %5, align 4
  %116 = getelementptr inbounds %struct.nvkm_object, ptr %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 6
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  store ptr %116, ptr %119, align 4
  store ptr %118, ptr %116, align 4
  %120 = getelementptr inbounds %struct.nvkm_object, ptr %115, i32 0, i32 5, i32 1
  store ptr %117, ptr %120, align 4
  store volatile ptr %116, ptr %117, align 4
  %121 = call zeroext i1 @nvkm_object_insert(ptr noundef %115) #6
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load ptr, ptr %5, align 4
  %124 = getelementptr inbounds %struct.nvkm_client, ptr %0, i32 0, i32 6
  store ptr %123, ptr %124, align 8
  br label %131

125:                                              ; preds = %114, %110
  %126 = phi i32 [ %112, %110 ], [ -17, %114 ]
  %127 = load ptr, ptr %5, align 4
  %128 = call i32 @nvkm_object_fini(ptr noundef %127, i1 noundef zeroext false) #6
  br label %129

129:                                              ; preds = %125, %106
  %130 = phi i32 [ %126, %125 ], [ %108, %106 ]
  call void @nvkm_object_del(ptr noundef nonnull %5) #6
  br label %131

131:                                              ; preds = %129, %122, %104, %79, %72, %67, %21, %19
  %132 = phi i32 [ %105, %104 ], [ 0, %122 ], [ %130, %129 ], [ -22, %72 ], [ -22, %67 ], [ -38, %21 ], [ -38, %19 ], [ %88, %79 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_del(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %9, 4
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 1
  %13 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %3) #5
  br label %18

18:                                               ; preds = %11, %4
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.nvkm_client, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 8
  %24 = icmp ugt i32 %23, 4
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %21, i32 0, i32 1
  %27 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %26, i32 noundef %28, i32 noundef %30) #5
  br label %32

32:                                               ; preds = %25, %20
  %33 = tail call i32 @nvkm_object_fini(ptr noundef %1, i1 noundef zeroext false) #6
  call void @nvkm_object_del(ptr noundef nonnull %5) #6
  br label %34

34:                                               ; preds = %32, %18
  %35 = phi i32 [ 1, %32 ], [ -38, %18 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_mthd(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %3) #5
  br label %17

17:                                               ; preds = %10, %4
  %18 = icmp ugt i32 %3, 7
  br i1 %18, label %19, label %44

19:                                               ; preds = %17
  %20 = load i8, ptr %2, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %2, i32 8
  %24 = add i32 %3, -8
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvif_ioctl_mthd_v0, ptr %2, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef 0, i32 noundef %37) #5
  br label %39

39:                                               ; preds = %29, %22
  %40 = getelementptr inbounds %struct.nvif_ioctl_mthd_v0, ptr %2, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = tail call i32 @nvkm_object_mthd(ptr noundef %1, i32 noundef %42, ptr noundef %23, i32 noundef %24) #6
  br label %44

44:                                               ; preds = %39, %19, %17
  %45 = phi i32 [ %43, %39 ], [ -38, %19 ], [ -38, %17 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_rd(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = alloca %union.anon.137, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %9, 4
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 1
  %13 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %3) #5
  br label %18

18:                                               ; preds = %11, %4
  %19 = icmp ugt i32 %3, 15
  br i1 %19, label %20, label %66

20:                                               ; preds = %18
  %21 = load i8, ptr %2, align 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %20
  %24 = icmp eq i32 %3, 16
  br i1 %24, label %25, label %66

25:                                               ; preds = %23
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = icmp ugt i32 %28, 4
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 1
  %32 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %2, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %2, i32 0, i32 4
  %40 = load i64, ptr %39, align 8
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef 0, i32 noundef %38, i64 noundef %40) #5
  br label %42

42:                                               ; preds = %30, %25
  %43 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %2, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  switch i8 %44, label %66 [
    i8 1, label %45
    i8 2, label %51
    i8 4, label %57
  ]

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %2, i32 0, i32 4
  %47 = load i64, ptr %46, align 8
  %48 = call i32 @nvkm_object_rd08(ptr noundef %1, i64 noundef %47, ptr noundef nonnull %5) #6
  %49 = load i8, ptr %5, align 4
  %50 = zext i8 %49 to i32
  br label %62

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %2, i32 0, i32 4
  %53 = load i64, ptr %52, align 8
  %54 = call i32 @nvkm_object_rd16(ptr noundef %1, i64 noundef %53, ptr noundef nonnull %5) #6
  %55 = load i16, ptr %5, align 4
  %56 = zext i16 %55 to i32
  br label %62

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %2, i32 0, i32 4
  %59 = load i64, ptr %58, align 8
  %60 = call i32 @nvkm_object_rd32(ptr noundef %1, i64 noundef %59, ptr noundef nonnull %5) #6
  %61 = load i32, ptr %5, align 4
  br label %62

62:                                               ; preds = %57, %51, %45
  %63 = phi i32 [ %50, %45 ], [ %56, %51 ], [ %61, %57 ]
  %64 = phi i32 [ %48, %45 ], [ %54, %51 ], [ %60, %57 ]
  %65 = getelementptr inbounds %struct.nvif_ioctl_rd_v0, ptr %2, i32 0, i32 3
  store i32 %63, ptr %65, align 4
  br label %66

66:                                               ; preds = %62, %42, %23, %20, %18
  %67 = phi i32 [ -22, %42 ], [ -38, %18 ], [ -38, %20 ], [ -7, %23 ], [ %64, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_wr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %3) #5
  br label %17

17:                                               ; preds = %10, %4
  %18 = icmp ugt i32 %3, 15
  br i1 %18, label %19, label %66

19:                                               ; preds = %17
  %20 = load i8, ptr %2, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %19
  %23 = icmp eq i32 %3, 16
  br i1 %23, label %24, label %66

24:                                               ; preds = %22
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %2, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %2, i32 0, i32 4
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %2, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef 0, i32 noundef %37, i64 noundef %39, i32 noundef %41) #5
  br label %43

43:                                               ; preds = %29, %24
  %44 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %2, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  switch i8 %45, label %66 [
    i8 1, label %46
    i8 2, label %53
    i8 4, label %60
  ]

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %2, i32 0, i32 4
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %2, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = trunc i32 %50 to i8
  %52 = tail call i32 @nvkm_object_wr08(ptr noundef %1, i64 noundef %48, i8 noundef zeroext %51) #6
  br label %66

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %2, i32 0, i32 4
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %2, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = trunc i32 %57 to i16
  %59 = tail call i32 @nvkm_object_wr16(ptr noundef %1, i64 noundef %55, i16 noundef zeroext %58) #6
  br label %66

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %2, i32 0, i32 4
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds %struct.nvif_ioctl_wr_v0, ptr %2, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 @nvkm_object_wr32(ptr noundef %1, i64 noundef %62, i32 noundef %64) #6
  br label %66

66:                                               ; preds = %60, %53, %46, %43, %22, %19, %17
  %67 = phi i32 [ %65, %60 ], [ %59, %53 ], [ %52, %46 ], [ -22, %43 ], [ -38, %17 ], [ -38, %19 ], [ -7, %22 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_map(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %9, 4
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 1
  %13 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %3) #5
  br label %18

18:                                               ; preds = %11, %4
  %19 = icmp ugt i32 %3, 23
  br i1 %19, label %20, label %45

20:                                               ; preds = %18
  %21 = load i8, ptr %2, align 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %2, i32 24
  %25 = add i32 %3, -24
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = icmp ugt i32 %28, 4
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 1
  %32 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef 0) #5
  br label %37

37:                                               ; preds = %30, %23
  %38 = getelementptr inbounds %struct.nvif_ioctl_map_v0, ptr %2, i32 0, i32 3
  %39 = getelementptr inbounds %struct.nvif_ioctl_map_v0, ptr %2, i32 0, i32 4
  %40 = call i32 @nvkm_object_map(ptr noundef %1, ptr noundef %24, i32 noundef %25, ptr noundef nonnull %5, ptr noundef %38, ptr noundef %39) #6
  %41 = load i32, ptr %5, align 4
  %42 = icmp ne i32 %41, 0
  %43 = getelementptr inbounds %struct.nvif_ioctl_map_v0, ptr %2, i32 0, i32 1
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 1
  br label %45

45:                                               ; preds = %37, %20, %18
  %46 = phi i32 [ -38, %20 ], [ -38, %18 ], [ %40, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_unmap(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %3) #5
  br label %17

17:                                               ; preds = %10, %4
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.nvkm_client, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.nvkm_client, ptr %20, i32 0, i32 1
  %26 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %25, i32 noundef %27, i32 noundef %29) #5
  br label %31

31:                                               ; preds = %24, %19
  %32 = tail call i32 @nvkm_object_unmap(ptr noundef %1) #6
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi i32 [ -38, %17 ], [ %32, %31 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_ntfy_new(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %9, 4
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 1
  %13 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %3) #5
  br label %18

18:                                               ; preds = %11, %4
  %19 = icmp ugt i32 %3, 7
  br i1 %19, label %20, label %53

20:                                               ; preds = %18
  %21 = load i8, ptr %2, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %2, i32 8
  %25 = add i32 %3, -8
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = icmp ugt i32 %28, 4
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 1
  %32 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, ptr %2, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef 0, i32 noundef %38) #5
  br label %40

40:                                               ; preds = %30, %23
  %41 = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, ptr %2, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = call i32 @nvkm_object_ntfy(ptr noundef %1, i32 noundef %43, ptr noundef nonnull %5) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load ptr, ptr %5, align 4
  %48 = call i32 @nvkm_client_notify_new(ptr noundef %1, ptr noundef %47, ptr noundef %24, i32 noundef %25) #6
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = trunc i32 %48 to i8
  %52 = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, ptr %2, i32 0, i32 2
  store i8 %51, ptr %52, align 1
  br label %53

53:                                               ; preds = %50, %46, %40, %20, %18
  %54 = phi i32 [ 0, %50 ], [ %48, %46 ], [ %44, %40 ], [ -38, %20 ], [ -38, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_ntfy_del(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %3) #5
  br label %17

17:                                               ; preds = %10, %4
  %18 = icmp ugt i32 %3, 7
  br i1 %18, label %19, label %44

19:                                               ; preds = %17
  %20 = load i8, ptr %2, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = icmp eq i32 %3, 8
  br i1 %23, label %24, label %44

24:                                               ; preds = %22
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvif_ioctl_ntfy_del_v0, ptr %2, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef 0, i32 noundef %37) #5
  br label %39

39:                                               ; preds = %29, %24
  %40 = getelementptr inbounds %struct.nvif_ioctl_ntfy_del_v0, ptr %2, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = tail call i32 @nvkm_client_notify_del(ptr noundef %0, i32 noundef %42) #6
  br label %44

44:                                               ; preds = %39, %22, %19, %17
  %45 = phi i32 [ %43, %39 ], [ -38, %17 ], [ -38, %19 ], [ -7, %22 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_ntfy_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %3) #5
  br label %17

17:                                               ; preds = %10, %4
  %18 = icmp ugt i32 %3, 7
  br i1 %18, label %19, label %44

19:                                               ; preds = %17
  %20 = load i8, ptr %2, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = icmp eq i32 %3, 8
  br i1 %23, label %24, label %44

24:                                               ; preds = %22
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvif_ioctl_ntfy_get_v0, ptr %2, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef 0, i32 noundef %37) #5
  br label %39

39:                                               ; preds = %29, %24
  %40 = getelementptr inbounds %struct.nvif_ioctl_ntfy_get_v0, ptr %2, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = tail call i32 @nvkm_client_notify_get(ptr noundef %0, i32 noundef %42) #6
  br label %44

44:                                               ; preds = %39, %22, %19, %17
  %45 = phi i32 [ %43, %39 ], [ -38, %17 ], [ -38, %19 ], [ -7, %22 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ioctl_ntfy_put(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %3) #5
  br label %17

17:                                               ; preds = %10, %4
  %18 = icmp ugt i32 %3, 7
  br i1 %18, label %19, label %44

19:                                               ; preds = %17
  %20 = load i8, ptr %2, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = icmp eq i32 %3, 8
  br i1 %23, label %24, label %44

24:                                               ; preds = %22
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvif_ioctl_ntfy_put_v0, ptr %2, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef 0, i32 noundef %37) #5
  br label %39

39:                                               ; preds = %29, %24
  %40 = getelementptr inbounds %struct.nvif_ioctl_ntfy_put_v0, ptr %2, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = tail call i32 @nvkm_client_notify_put(ptr noundef %0, i32 noundef %42) #6
  br label %44

44:                                               ; preds = %39, %22, %19, %17
  %45 = phi i32 [ %43, %39 ], [ -38, %17 ], [ -38, %19 ], [ -7, %22 ]
  ret i32 %45
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_engine_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_engine_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_object_insert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd08(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd16(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_rd32(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr08(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr16(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_wr32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_unmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_ntfy(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_client_notify_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_client_notify_del(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_client_notify_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_client_notify_put(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }

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
