; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv2a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv2a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.124 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv20_gr_chan = type { %struct.nvkm_object, ptr, i32, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.71 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.71 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@nv04_gr_object = external dso_local constant %struct.nvkm_object_func, align 4
@nv2a_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.124, [16 x %struct.nvkm_sclass] } { ptr @nv20_gr_dtor, ptr @nv20_gr_oneinit, ptr @nv20_gr_init, ptr null, ptr @nv20_gr_intr, ptr @nv20_gr_tile, ptr null, ptr @nv2a_gr_chan_new, ptr null, ptr null, ptr null, %struct.anon.124 zeroinitializer, [16 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 150, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 158, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 1431, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@nv2a_gr_chan = internal constant %struct.nvkm_object_func { ptr @nv20_gr_chan_dtor, ptr @nv20_gr_chan_init, ptr @nv20_gr_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv2a_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nv20_gr_new_(ptr noundef nonnull @nv2a_gr, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv20_gr_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_oneinit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv20_gr_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv20_gr_tile(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv2a_gr_chan_new(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 88) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %402, label %8

8:                                                ; preds = %4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv2a_gr_chan, ptr noundef %2, ptr noundef nonnull %6) #3
  %9 = getelementptr inbounds %struct.nv20_gr_chan, ptr %6, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %1, i32 0, i32 5
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.nv20_gr_chan, ptr %6, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  store ptr %6, ptr %3, align 4
  %14 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nv20_gr_chan, ptr %6, i32 0, i32 3
  %17 = tail call i32 @nvkm_memory_new(ptr noundef %15, i32 noundef 0, i64 noundef 14000, i32 noundef 16, i1 noundef zeroext true, ptr noundef %16) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %402

19:                                               ; preds = %8
  %20 = load ptr, ptr %16, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_memory_func, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr %23(ptr noundef %20) #3
  %25 = load ptr, ptr %16, align 8
  %26 = getelementptr inbounds %struct.nvkm_memory, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %13, align 4
  %31 = shl i32 %30, 24
  %32 = or i32 %31, 1
  tail call void %29(ptr noundef %25, i64 noundef 0, i32 noundef %32) #3
  %33 = load ptr, ptr %16, align 8
  %34 = getelementptr inbounds %struct.nvkm_memory, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %33, i64 noundef 828, i32 noundef -65536) #3
  %38 = load ptr, ptr %16, align 8
  %39 = getelementptr inbounds %struct.nvkm_memory, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %38, i64 noundef 928, i32 noundef 268369920) #3
  %43 = load ptr, ptr %16, align 8
  %44 = getelementptr inbounds %struct.nvkm_memory, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %43, i64 noundef 932, i32 noundef 268369920) #3
  %48 = load ptr, ptr %16, align 8
  %49 = getelementptr inbounds %struct.nvkm_memory, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %48, i64 noundef 1148, i32 noundef 257) #3
  %53 = load ptr, ptr %16, align 8
  %54 = getelementptr inbounds %struct.nvkm_memory, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  tail call void %57(ptr noundef %53, i64 noundef 1168, i32 noundef 273) #3
  %58 = load ptr, ptr %16, align 8
  %59 = getelementptr inbounds %struct.nvkm_memory, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  tail call void %62(ptr noundef %58, i64 noundef 1192, i32 noundef 1145044992) #3
  %63 = load ptr, ptr %16, align 8
  %64 = getelementptr inbounds %struct.nvkm_memory, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void %67(ptr noundef %63, i64 noundef 1236, i32 noundef 197379) #3
  %68 = load ptr, ptr %16, align 8
  %69 = getelementptr inbounds %struct.nvkm_memory, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void %72(ptr noundef %68, i64 noundef 1240, i32 noundef 197379) #3
  %73 = load ptr, ptr %16, align 8
  %74 = getelementptr inbounds %struct.nvkm_memory, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %73, i64 noundef 1244, i32 noundef 197379) #3
  %78 = load ptr, ptr %16, align 8
  %79 = getelementptr inbounds %struct.nvkm_memory, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  tail call void %82(ptr noundef %78, i64 noundef 1248, i32 noundef 197379) #3
  %83 = load ptr, ptr %16, align 8
  %84 = getelementptr inbounds %struct.nvkm_memory, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  tail call void %87(ptr noundef %83, i64 noundef 1268, i32 noundef 524288) #3
  %88 = load ptr, ptr %16, align 8
  %89 = getelementptr inbounds %struct.nvkm_memory, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  tail call void %92(ptr noundef %88, i64 noundef 1272, i32 noundef 524288) #3
  %93 = load ptr, ptr %16, align 8
  %94 = getelementptr inbounds %struct.nvkm_memory, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  tail call void %97(ptr noundef %93, i64 noundef 1276, i32 noundef 524288) #3
  %98 = load ptr, ptr %16, align 8
  %99 = getelementptr inbounds %struct.nvkm_memory, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  tail call void %102(ptr noundef %98, i64 noundef 1280, i32 noundef 524288) #3
  %103 = load ptr, ptr %16, align 8
  %104 = getelementptr inbounds %struct.nvkm_memory, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  tail call void %107(ptr noundef %103, i64 noundef 1292, i32 noundef 16850944) #3
  %108 = load ptr, ptr %16, align 8
  %109 = getelementptr inbounds %struct.nvkm_memory, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  tail call void %112(ptr noundef %108, i64 noundef 1296, i32 noundef 16850944) #3
  %113 = load ptr, ptr %16, align 8
  %114 = getelementptr inbounds %struct.nvkm_memory, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %115, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  tail call void %117(ptr noundef %113, i64 noundef 1300, i32 noundef 16850944) #3
  %118 = load ptr, ptr %16, align 8
  %119 = getelementptr inbounds %struct.nvkm_memory, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  tail call void %122(ptr noundef %118, i64 noundef 1304, i32 noundef 16850944) #3
  %123 = load ptr, ptr %16, align 8
  %124 = getelementptr inbounds %struct.nvkm_memory, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  tail call void %127(ptr noundef %123, i64 noundef 1308, i32 noundef 67000) #3
  %128 = load ptr, ptr %16, align 8
  %129 = getelementptr inbounds %struct.nvkm_memory, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  tail call void %132(ptr noundef %128, i64 noundef 1312, i32 noundef 67000) #3
  %133 = load ptr, ptr %16, align 8
  %134 = getelementptr inbounds %struct.nvkm_memory, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  tail call void %137(ptr noundef %133, i64 noundef 1316, i32 noundef 67000) #3
  %138 = load ptr, ptr %16, align 8
  %139 = getelementptr inbounds %struct.nvkm_memory, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  tail call void %142(ptr noundef %138, i64 noundef 1320, i32 noundef 67000) #3
  %143 = load ptr, ptr %16, align 8
  %144 = getelementptr inbounds %struct.nvkm_memory, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %145, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  tail call void %147(ptr noundef %143, i64 noundef 1324, i32 noundef 524296) #3
  %148 = load ptr, ptr %16, align 8
  %149 = getelementptr inbounds %struct.nvkm_memory, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %150, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  tail call void %152(ptr noundef %148, i64 noundef 1328, i32 noundef 524296) #3
  %153 = load ptr, ptr %16, align 8
  %154 = getelementptr inbounds %struct.nvkm_memory, ptr %153, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %155, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  tail call void %157(ptr noundef %153, i64 noundef 1332, i32 noundef 524296) #3
  %158 = load ptr, ptr %16, align 8
  %159 = getelementptr inbounds %struct.nvkm_memory, ptr %158, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %160, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  tail call void %162(ptr noundef %158, i64 noundef 1336, i32 noundef 524296) #3
  %163 = load ptr, ptr %16, align 8
  %164 = getelementptr inbounds %struct.nvkm_memory, ptr %163, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %165, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  tail call void %167(ptr noundef %163, i64 noundef 1372, i32 noundef 134152192) #3
  %168 = load ptr, ptr %16, align 8
  %169 = getelementptr inbounds %struct.nvkm_memory, ptr %168, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %170, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  tail call void %172(ptr noundef %168, i64 noundef 1376, i32 noundef 134152192) #3
  %173 = load ptr, ptr %16, align 8
  %174 = getelementptr inbounds %struct.nvkm_memory, ptr %173, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %175, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  tail call void %177(ptr noundef %173, i64 noundef 1380, i32 noundef 134152192) #3
  %178 = load ptr, ptr %16, align 8
  %179 = getelementptr inbounds %struct.nvkm_memory, ptr %178, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %180, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  tail call void %182(ptr noundef %178, i64 noundef 1384, i32 noundef 134152192) #3
  %183 = load ptr, ptr %16, align 8
  %184 = getelementptr inbounds %struct.nvkm_memory, ptr %183, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %185, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  tail call void %187(ptr noundef %183, i64 noundef 1388, i32 noundef 134152192) #3
  %188 = load ptr, ptr %16, align 8
  %189 = getelementptr inbounds %struct.nvkm_memory, ptr %188, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %190, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  tail call void %192(ptr noundef %188, i64 noundef 1392, i32 noundef 134152192) #3
  %193 = load ptr, ptr %16, align 8
  %194 = getelementptr inbounds %struct.nvkm_memory, ptr %193, i32 0, i32 1
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %195, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  tail call void %197(ptr noundef %193, i64 noundef 1396, i32 noundef 134152192) #3
  %198 = load ptr, ptr %16, align 8
  %199 = getelementptr inbounds %struct.nvkm_memory, ptr %198, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %200, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  tail call void %202(ptr noundef %198, i64 noundef 1400, i32 noundef 134152192) #3
  %203 = load ptr, ptr %16, align 8
  %204 = getelementptr inbounds %struct.nvkm_memory, ptr %203, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %205, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  tail call void %207(ptr noundef %203, i64 noundef 1404, i32 noundef 134152192) #3
  %208 = load ptr, ptr %16, align 8
  %209 = getelementptr inbounds %struct.nvkm_memory, ptr %208, i32 0, i32 1
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %210, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  tail call void %212(ptr noundef %208, i64 noundef 1408, i32 noundef 134152192) #3
  %213 = load ptr, ptr %16, align 8
  %214 = getelementptr inbounds %struct.nvkm_memory, ptr %213, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %215, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  tail call void %217(ptr noundef %213, i64 noundef 1412, i32 noundef 134152192) #3
  %218 = load ptr, ptr %16, align 8
  %219 = getelementptr inbounds %struct.nvkm_memory, ptr %218, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %220, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  tail call void %222(ptr noundef %218, i64 noundef 1416, i32 noundef 134152192) #3
  %223 = load ptr, ptr %16, align 8
  %224 = getelementptr inbounds %struct.nvkm_memory, ptr %223, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %225, i32 0, i32 1
  %227 = load ptr, ptr %226, align 4
  tail call void %227(ptr noundef %223, i64 noundef 1420, i32 noundef 134152192) #3
  %228 = load ptr, ptr %16, align 8
  %229 = getelementptr inbounds %struct.nvkm_memory, ptr %228, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %230, i32 0, i32 1
  %232 = load ptr, ptr %231, align 4
  tail call void %232(ptr noundef %228, i64 noundef 1424, i32 noundef 134152192) #3
  %233 = load ptr, ptr %16, align 8
  %234 = getelementptr inbounds %struct.nvkm_memory, ptr %233, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %235, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  tail call void %237(ptr noundef %233, i64 noundef 1428, i32 noundef 134152192) #3
  %238 = load ptr, ptr %16, align 8
  %239 = getelementptr inbounds %struct.nvkm_memory, ptr %238, i32 0, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %240, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  tail call void %242(ptr noundef %238, i64 noundef 1432, i32 noundef 134152192) #3
  %243 = load ptr, ptr %16, align 8
  %244 = getelementptr inbounds %struct.nvkm_memory, ptr %243, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %245, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  tail call void %247(ptr noundef %243, i64 noundef 1444, i32 noundef 1266679807) #3
  %248 = load ptr, ptr %16, align 8
  %249 = getelementptr inbounds %struct.nvkm_memory, ptr %248, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %250, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  tail call void %252(ptr noundef %248, i64 noundef 1532, i32 noundef 1) #3
  %253 = load ptr, ptr %16, align 8
  %254 = getelementptr inbounds %struct.nvkm_memory, ptr %253, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %255, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  tail call void %257(ptr noundef %253, i64 noundef 1540, i32 noundef 16384) #3
  %258 = load ptr, ptr %16, align 8
  %259 = getelementptr inbounds %struct.nvkm_memory, ptr %258, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %260, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  tail call void %262(ptr noundef %258, i64 noundef 1552, i32 noundef 1) #3
  %263 = load ptr, ptr %16, align 8
  %264 = getelementptr inbounds %struct.nvkm_memory, ptr %263, i32 0, i32 1
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %265, i32 0, i32 1
  %267 = load ptr, ptr %266, align 4
  tail call void %267(ptr noundef %263, i64 noundef 1560, i32 noundef 262144) #3
  %268 = load ptr, ptr %16, align 8
  %269 = getelementptr inbounds %struct.nvkm_memory, ptr %268, i32 0, i32 1
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %270, i32 0, i32 1
  %272 = load ptr, ptr %271, align 4
  tail call void %272(ptr noundef %268, i64 noundef 1564, i32 noundef 65536) #3
  br label %273

273:                                              ; preds = %273, %19
  %274 = phi i32 [ 6812, %19 ], [ %295, %273 ]
  %275 = load ptr, ptr %16, align 8
  %276 = getelementptr inbounds %struct.nvkm_memory, ptr %275, i32 0, i32 1
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %277, i32 0, i32 1
  %279 = load ptr, ptr %278, align 4
  %280 = zext i32 %274 to i64
  tail call void %279(ptr noundef %275, i64 noundef %280, i32 noundef 275779577) #3
  %281 = load ptr, ptr %16, align 8
  %282 = getelementptr inbounds %struct.nvkm_memory, ptr %281, i32 0, i32 1
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %283, i32 0, i32 1
  %285 = load ptr, ptr %284, align 4
  %286 = add nuw nsw i32 %274, 4
  %287 = zext i32 %286 to i64
  tail call void %285(ptr noundef %281, i64 noundef %287, i32 noundef 70649964) #3
  %288 = load ptr, ptr %16, align 8
  %289 = getelementptr inbounds %struct.nvkm_memory, ptr %288, i32 0, i32 1
  %290 = load ptr, ptr %289, align 4
  %291 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %290, i32 0, i32 1
  %292 = load ptr, ptr %291, align 4
  %293 = add nuw nsw i32 %274, 8
  %294 = zext i32 %293 to i64
  tail call void %292(ptr noundef %288, i64 noundef %294, i32 noundef 786459) #3
  %295 = add nuw nsw i32 %274, 16
  %296 = icmp ult i32 %274, 8941
  br i1 %296, label %273, label %297

297:                                              ; preds = %273
  %298 = load ptr, ptr %16, align 8
  %299 = getelementptr inbounds %struct.nvkm_memory, ptr %298, i32 0, i32 1
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %300, i32 0, i32 1
  %302 = load ptr, ptr %301, align 4
  tail call void %302(ptr noundef %298, i64 noundef 9884, i32 noundef 1065353216) #3
  %303 = load ptr, ptr %16, align 8
  %304 = getelementptr inbounds %struct.nvkm_memory, ptr %303, i32 0, i32 1
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %305, i32 0, i32 1
  %307 = load ptr, ptr %306, align 4
  tail call void %307(ptr noundef %303, i64 noundef 9904, i32 noundef 1065353216) #3
  %308 = load ptr, ptr %16, align 8
  %309 = getelementptr inbounds %struct.nvkm_memory, ptr %308, i32 0, i32 1
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %310, i32 0, i32 1
  %312 = load ptr, ptr %311, align 4
  tail call void %312(ptr noundef %308, i64 noundef 9948, i32 noundef 1073741824) #3
  %313 = load ptr, ptr %16, align 8
  %314 = getelementptr inbounds %struct.nvkm_memory, ptr %313, i32 0, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %315, i32 0, i32 1
  %317 = load ptr, ptr %316, align 4
  tail call void %317(ptr noundef %313, i64 noundef 9952, i32 noundef 1065353216) #3
  %318 = load ptr, ptr %16, align 8
  %319 = getelementptr inbounds %struct.nvkm_memory, ptr %318, i32 0, i32 1
  %320 = load ptr, ptr %319, align 4
  %321 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %320, i32 0, i32 1
  %322 = load ptr, ptr %321, align 4
  tail call void %322(ptr noundef %318, i64 noundef 9956, i32 noundef 1056964608) #3
  %323 = load ptr, ptr %16, align 8
  %324 = getelementptr inbounds %struct.nvkm_memory, ptr %323, i32 0, i32 1
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %325, i32 0, i32 1
  %327 = load ptr, ptr %326, align 4
  tail call void %327(ptr noundef %323, i64 noundef 9964, i32 noundef 1073741824) #3
  %328 = load ptr, ptr %16, align 8
  %329 = getelementptr inbounds %struct.nvkm_memory, ptr %328, i32 0, i32 1
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %330, i32 0, i32 1
  %332 = load ptr, ptr %331, align 4
  tail call void %332(ptr noundef %328, i64 noundef 9968, i32 noundef 1065353216) #3
  %333 = load ptr, ptr %16, align 8
  %334 = getelementptr inbounds %struct.nvkm_memory, ptr %333, i32 0, i32 1
  %335 = load ptr, ptr %334, align 4
  %336 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %335, i32 0, i32 1
  %337 = load ptr, ptr %336, align 4
  tail call void %337(ptr noundef %333, i64 noundef 9976, i32 noundef -1082130432) #3
  %338 = load ptr, ptr %16, align 8
  %339 = getelementptr inbounds %struct.nvkm_memory, ptr %338, i32 0, i32 1
  %340 = load ptr, ptr %339, align 4
  %341 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %340, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  tail call void %342(ptr noundef %338, i64 noundef 9984, i32 noundef -1082130432) #3
  %343 = load ptr, ptr %16, align 8
  %344 = getelementptr inbounds %struct.nvkm_memory, ptr %343, i32 0, i32 1
  %345 = load ptr, ptr %344, align 4
  %346 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %345, i32 0, i32 1
  %347 = load ptr, ptr %346, align 4
  tail call void %347(ptr noundef %343, i64 noundef 12324, i32 noundef 1040384) #3
  %348 = load ptr, ptr %16, align 8
  %349 = getelementptr inbounds %struct.nvkm_memory, ptr %348, i32 0, i32 1
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %350, i32 0, i32 1
  %352 = load ptr, ptr %351, align 4
  tail call void %352(ptr noundef %348, i64 noundef 12448, i32 noundef 1016) #3
  %353 = load ptr, ptr %16, align 8
  %354 = getelementptr inbounds %struct.nvkm_memory, ptr %353, i32 0, i32 1
  %355 = load ptr, ptr %354, align 4
  %356 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %355, i32 0, i32 1
  %357 = load ptr, ptr %356, align 4
  tail call void %357(ptr noundef %353, i64 noundef 13308, i32 noundef 3137536) #3
  %358 = load ptr, ptr %16, align 8
  %359 = getelementptr inbounds %struct.nvkm_memory, ptr %358, i32 0, i32 1
  %360 = load ptr, ptr %359, align 4
  %361 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %360, i32 0, i32 1
  %362 = load ptr, ptr %361, align 4
  tail call void %362(ptr noundef %358, i64 noundef 13340, i32 noundef 1856124) #3
  %363 = load ptr, ptr %16, align 8
  %364 = getelementptr inbounds %struct.nvkm_memory, ptr %363, i32 0, i32 1
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %365, i32 0, i32 1
  %367 = load ptr, ptr %366, align 4
  tail call void %367(ptr noundef %363, i64 noundef 13344, i32 noundef 1856124) #3
  %368 = load ptr, ptr %16, align 8
  %369 = getelementptr inbounds %struct.nvkm_memory, ptr %368, i32 0, i32 1
  %370 = load ptr, ptr %369, align 4
  %371 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %370, i32 0, i32 1
  %372 = load ptr, ptr %371, align 4
  tail call void %372(ptr noundef %368, i64 noundef 13348, i32 noundef 1856124) #3
  %373 = load ptr, ptr %16, align 8
  %374 = getelementptr inbounds %struct.nvkm_memory, ptr %373, i32 0, i32 1
  %375 = load ptr, ptr %374, align 4
  %376 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %375, i32 0, i32 1
  %377 = load ptr, ptr %376, align 4
  tail call void %377(ptr noundef %373, i64 noundef 13352, i32 noundef 1856124) #3
  %378 = load ptr, ptr %16, align 8
  %379 = getelementptr inbounds %struct.nvkm_memory, ptr %378, i32 0, i32 1
  %380 = load ptr, ptr %379, align 4
  %381 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %380, i32 0, i32 1
  %382 = load ptr, ptr %381, align 4
  tail call void %382(ptr noundef %378, i64 noundef 13356, i32 noundef 1856124) #3
  %383 = load ptr, ptr %16, align 8
  %384 = getelementptr inbounds %struct.nvkm_memory, ptr %383, i32 0, i32 1
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %385, i32 0, i32 1
  %387 = load ptr, ptr %386, align 4
  tail call void %387(ptr noundef %383, i64 noundef 13360, i32 noundef 1856124) #3
  %388 = load ptr, ptr %16, align 8
  %389 = getelementptr inbounds %struct.nvkm_memory, ptr %388, i32 0, i32 1
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %390, i32 0, i32 1
  %392 = load ptr, ptr %391, align 4
  tail call void %392(ptr noundef %388, i64 noundef 13364, i32 noundef 1856124) #3
  %393 = load ptr, ptr %16, align 8
  %394 = getelementptr inbounds %struct.nvkm_memory, ptr %393, i32 0, i32 1
  %395 = load ptr, ptr %394, align 4
  %396 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %395, i32 0, i32 1
  %397 = load ptr, ptr %396, align 4
  tail call void %397(ptr noundef %393, i64 noundef 13368, i32 noundef 1856124) #3
  %398 = load ptr, ptr %16, align 8
  %399 = load ptr, ptr %398, align 4
  %400 = getelementptr inbounds %struct.nvkm_memory_func, ptr %399, i32 0, i32 8
  %401 = load ptr, ptr %400, align 4
  tail call void %401(ptr noundef %398) #3
  br label %402

402:                                              ; preds = %297, %8, %4
  %403 = phi i32 [ 0, %297 ], [ -12, %4 ], [ %17, %8 ]
  ret i32 %403
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv20_gr_chan_dtor(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_chan_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv20_gr_chan_fini(ptr noundef, i1 noundef zeroext) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
