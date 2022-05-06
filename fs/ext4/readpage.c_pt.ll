; ModuleID = '/llk/IR/fs/ext4/readpage.c_pt.bc'
source_filename = "../fs/ext4/readpage.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.34, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.34 = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.38, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.38 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio_post_read_ctx = type { ptr, %struct.work_struct, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ext4_bio_post_read_ctx\00", align 1
@bio_post_read_ctx_cache = internal unnamed_addr global ptr null, align 4
@bio_post_read_ctx_pool = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"include/linux/fsverity.h\00", align 1
@fs_bio_set = external dso_local global %struct.bio_set, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ext4_mpage_readpages(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [8 x i64], align 8
  %5 = alloca %struct.ext4_map_blocks, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = lshr i32 4096, %8
  %10 = shl nuw i32 1, %8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !8
  %15 = icmp eq ptr %1, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 2
  %19 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  br label %27

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.readahead_control, ptr %1, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 2
  %25 = getelementptr inbounds %struct.ext4_map_blocks, ptr %5, i32 0, i32 3
  %26 = icmp eq i32 %22, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  br i1 %26, label %344, label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ 0, %16 ], [ 524288, %20 ]
  %29 = phi ptr [ %19, %16 ], [ %25, %20 ]
  %30 = phi ptr [ %18, %16 ], [ %24, %20 ]
  %31 = phi ptr [ %17, %16 ], [ %23, %20 ]
  %32 = phi i32 [ 1, %16 ], [ %22, %20 ]
  %33 = getelementptr inbounds %struct.readahead_control, ptr %1, i32 0, i32 5
  %34 = getelementptr inbounds %struct.readahead_control, ptr %1, i32 0, i32 4
  %35 = getelementptr inbounds %struct.readahead_control, ptr %1, i32 0, i32 3
  %36 = getelementptr inbounds %struct.readahead_control, ptr %1, i32 0, i32 1
  %37 = sub nsw i32 12, %8
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %40 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %41 = zext i32 %10 to i64
  %42 = add nsw i64 %41, -1
  %43 = zext i8 %7 to i64
  %44 = add nsw i32 %8, -9
  %45 = zext i32 %44 to i64
  %46 = add nsw i32 %9, -1
  %47 = getelementptr [8 x i64], ptr %4, i32 0, i32 %46
  br label %48

48:                                               ; preds = %338, %27
  %49 = phi i32 [ %32, %27 ], [ %339, %338 ]
  %50 = phi i32 [ 0, %27 ], [ %320, %338 ]
  %51 = phi i64 [ 0, %27 ], [ %319, %338 ]
  %52 = phi ptr [ null, %27 ], [ %318, %338 ]
  %53 = phi ptr [ %2, %27 ], [ %78, %338 ]
  br i1 %15, label %77, label %54

54:                                               ; preds = %48
  %55 = load i32, ptr %33, align 4
  %56 = load i32, ptr %34, align 4
  %57 = icmp ult i32 %56, %55
  br i1 %57, label %58, label %59, !prof !9

58:                                               ; preds = %54
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

59:                                               ; preds = %54
  %60 = sub i32 %56, %55
  store i32 %60, ptr %34, align 4
  %61 = load i32, ptr %35, align 4
  %62 = add i32 %61, %55
  store i32 %62, ptr %35, align 4
  %63 = icmp eq i32 %56, %55
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %36, align 4
  %66 = getelementptr inbounds %struct.address_space, ptr %65, i32 0, i32 1
  %67 = call ptr @xa_load(ptr noundef %66, i32 noundef %62) #6
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 65536
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = getelementptr %struct.page, ptr %67, i32 1, i32 1, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  br label %74

74:                                               ; preds = %71, %64, %59
  %75 = phi i32 [ 0, %59 ], [ %73, %71 ], [ 1, %64 ]
  %76 = phi ptr [ null, %59 ], [ %67, %71 ], [ %67, %64 ]
  store i32 %75, ptr %33, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #6, !srcloc !11
  br label %77

77:                                               ; preds = %74, %48
  %78 = phi ptr [ %76, %74 ], [ %53, %48 ]
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 8192
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %295

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = zext i32 %84 to i64
  %86 = mul i32 %49, %9
  %87 = zext i32 %86 to i64
  br label %88

88:                                               ; preds = %96, %82
  %89 = load volatile i32, ptr %39, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %92, %88
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !13
  %93 = load volatile i32, ptr %39, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %92

96:                                               ; preds = %92, %88
  %97 = phi i32 [ %89, %88 ], [ %93, %92 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %98 = load i64, ptr %40, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %99 = load volatile i32, ptr %39, align 4
  %100 = icmp eq i32 %99, %97
  br i1 %100, label %101, label %88

101:                                              ; preds = %96
  %102 = shl i64 %85, %38
  %103 = add i64 %102, %87
  %104 = add i64 %42, %98
  %105 = ashr i64 %104, %43
  %106 = call i64 @llvm.umin.i64(i64 %103, i64 %105)
  %107 = load i32, ptr %29, align 8
  %108 = and i32 %107, 16
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %143, label %110

110:                                              ; preds = %101
  %111 = load i32, ptr %31, align 8
  %112 = zext i32 %111 to i64
  %113 = icmp ugt i64 %102, %112
  br i1 %113, label %114, label %143

114:                                              ; preds = %110
  %115 = load i32, ptr %30, align 4
  %116 = add i32 %115, %111
  %117 = zext i32 %116 to i64
  %118 = icmp ult i64 %102, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %114
  %120 = trunc i64 %102 to i32
  %121 = sub i32 %120, %111
  %122 = sub i32 %115, %121
  %123 = icmp eq i32 %115, %121
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load i64, ptr %5, align 8
  %126 = zext i32 %121 to i64
  br label %131

127:                                              ; preds = %135, %119
  %128 = phi i64 [ %102, %119 ], [ %141, %135 ]
  %129 = phi i32 [ 0, %119 ], [ %122, %135 ]
  %130 = and i32 %107, -17
  store i32 %130, ptr %29, align 8
  br label %143

131:                                              ; preds = %135, %124
  %132 = phi i32 [ 0, %124 ], [ %140, %135 ]
  %133 = phi i64 [ %102, %124 ], [ %141, %135 ]
  %134 = icmp eq i32 %132, %9
  br i1 %134, label %234, label %135

135:                                              ; preds = %131
  %136 = zext i32 %132 to i64
  %137 = add nuw nsw i64 %136, %126
  %138 = add i64 %137, %125
  %139 = getelementptr [8 x i64], ptr %4, i32 0, i32 %132
  store i64 %138, ptr %139, align 8
  %140 = add nuw nsw i32 %132, 1
  %141 = add i64 %133, 1
  %142 = icmp eq i32 %140, %122
  br i1 %142, label %127, label %131

143:                                              ; preds = %127, %114, %110, %101
  %144 = phi i32 [ %107, %114 ], [ %107, %110 ], [ %107, %101 ], [ %130, %127 ]
  %145 = phi i64 [ %102, %114 ], [ %102, %110 ], [ %102, %101 ], [ %128, %127 ]
  %146 = phi i32 [ 0, %114 ], [ 0, %110 ], [ 0, %101 ], [ %129, %127 ]
  %147 = phi i32 [ %50, %114 ], [ %50, %110 ], [ %50, %101 ], [ %129, %127 ]
  %148 = icmp ult i32 %146, %9
  br i1 %148, label %149, label %234

149:                                              ; preds = %220, %143
  %150 = phi i32 [ %223, %220 ], [ %144, %143 ]
  %151 = phi i32 [ %158, %220 ], [ 1, %143 ]
  %152 = phi i32 [ %203, %220 ], [ %147, %143 ]
  %153 = phi i32 [ %222, %220 ], [ %146, %143 ]
  %154 = phi i64 [ %221, %220 ], [ %145, %143 ]
  br label %155

155:                                              ; preds = %187, %149
  %156 = phi i32 [ %150, %149 ], [ %183, %187 ]
  %157 = phi i32 [ %9, %149 ], [ %188, %187 ]
  %158 = phi i32 [ %151, %149 ], [ 0, %187 ]
  %159 = phi i32 [ %153, %149 ], [ %189, %187 ]
  %160 = phi i64 [ %154, %149 ], [ %190, %187 ]
  %161 = icmp ugt i64 %106, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %155
  %163 = trunc i64 %160 to i32
  store i32 %163, ptr %31, align 8
  %164 = sub i64 %106, %160
  %165 = trunc i64 %164 to i32
  store i32 %165, ptr %30, align 4
  %166 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0) #6
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %162
  %169 = load i32, ptr %29, align 8
  br label %182

170:                                              ; preds = %162
  %171 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1
  %172 = load volatile i32, ptr %171, align 4
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175, !prof !16

175:                                              ; preds = %170
  %176 = add i32 %172, -1
  br label %179

177:                                              ; preds = %170
  %178 = ptrtoint ptr %78 to i32
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = inttoptr i32 %180 to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %181) #6
  call void @zero_user_segments(ptr noundef %78, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #6
  call void @unlock_page(ptr noundef %78) #6
  br label %317

182:                                              ; preds = %168, %155
  %183 = phi i32 [ %169, %168 ], [ %156, %155 ]
  %184 = and i32 %183, 16
  %185 = icmp eq i32 %184, 0
  %186 = icmp eq i32 %157, %9
  br i1 %185, label %187, label %192

187:                                              ; preds = %182
  %188 = select i1 %186, i32 %159, i32 %157
  %189 = add nuw i32 %159, 1
  %190 = add i64 %160, 1
  %191 = icmp ult i32 %189, %9
  br i1 %191, label %155, label %225

192:                                              ; preds = %182
  br i1 %186, label %193, label %295

193:                                              ; preds = %192
  %194 = icmp eq i32 %159, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %193
  %196 = add i32 %159, -1
  %197 = getelementptr [8 x i64], ptr %4, i32 0, i32 %196
  %198 = load i64, ptr %197, align 8
  %199 = load i64, ptr %5, align 8
  %200 = add i64 %199, -1
  %201 = icmp eq i64 %198, %200
  br i1 %201, label %202, label %295

202:                                              ; preds = %195, %193
  %203 = load i32, ptr %30, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %220, label %205

205:                                              ; preds = %202
  %206 = load i64, ptr %5, align 8
  br label %207

207:                                              ; preds = %212, %205
  %208 = phi i32 [ 0, %205 ], [ %218, %212 ]
  %209 = phi i32 [ %159, %205 ], [ %216, %212 ]
  %210 = phi i64 [ %160, %205 ], [ %217, %212 ]
  %211 = icmp eq i32 %209, %9
  br i1 %211, label %231, label %212

212:                                              ; preds = %207
  %213 = zext i32 %208 to i64
  %214 = add i64 %206, %213
  %215 = getelementptr [8 x i64], ptr %4, i32 0, i32 %209
  store i64 %214, ptr %215, align 8
  %216 = add i32 %209, 1
  %217 = add i64 %210, 1
  %218 = add nuw i32 %208, 1
  %219 = icmp eq i32 %218, %203
  br i1 %219, label %220, label %207

220:                                              ; preds = %212, %202
  %221 = phi i64 [ %160, %202 ], [ %217, %212 ]
  %222 = phi i32 [ %159, %202 ], [ %216, %212 ]
  %223 = and i32 %183, -17
  store i32 %223, ptr %29, align 8
  %224 = icmp ult i32 %222, %9
  br i1 %224, label %149, label %231

225:                                              ; preds = %187
  %226 = icmp eq i32 %188, %9
  br i1 %226, label %247, label %227

227:                                              ; preds = %225
  %228 = shl i32 %188, %8
  call void @zero_user_segments(ptr noundef %78, i32 noundef %228, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #6
  %229 = icmp eq i32 %188, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %227
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !17
  call void @_set_bit(i32 noundef 2, ptr noundef %78) #6
  call void @unlock_page(ptr noundef %78) #6
  br label %317

231:                                              ; preds = %220, %207
  %232 = phi i32 [ %208, %207 ], [ %203, %220 ]
  %233 = icmp eq i32 %158, 0
  br i1 %233, label %247, label %234

234:                                              ; preds = %231, %143, %131
  %235 = phi i32 [ %232, %231 ], [ %147, %143 ], [ %9, %131 ]
  %236 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1
  %237 = load volatile i32, ptr %236, align 4
  %238 = and i32 %237, 1
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240, !prof !16

240:                                              ; preds = %234
  %241 = add i32 %237, -1
  br label %244

242:                                              ; preds = %234
  %243 = ptrtoint ptr %78 to i32
  br label %244

244:                                              ; preds = %242, %240
  %245 = phi i32 [ %241, %240 ], [ %243, %242 ]
  %246 = inttoptr i32 %245 to ptr
  call void @_set_bit(i32 noundef 17, ptr noundef %246) #6
  br label %247

247:                                              ; preds = %244, %231, %227, %225
  %248 = phi i1 [ false, %231 ], [ false, %244 ], [ true, %227 ], [ false, %225 ]
  %249 = phi i32 [ %9, %231 ], [ %9, %244 ], [ %188, %227 ], [ %188, %225 ]
  %250 = phi i32 [ %232, %231 ], [ %235, %244 ], [ %152, %227 ], [ %152, %225 ]
  %251 = icmp eq ptr %52, null
  br i1 %251, label %258, label %252

252:                                              ; preds = %247
  %253 = load i64, ptr %4, align 8
  %254 = add i64 %253, -1
  %255 = icmp eq i64 %51, %254
  br i1 %255, label %258, label %256

256:                                              ; preds = %279, %252
  %257 = phi ptr [ %280, %279 ], [ %52, %252 ]
  call void @submit_bio(ptr noundef %257) #6
  br label %258

258:                                              ; preds = %256, %252, %247
  %259 = phi ptr [ null, %256 ], [ null, %247 ], [ %52, %252 ]
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %279

261:                                              ; preds = %258
  %262 = call i32 @llvm.umin.i32(i32 %49, i32 256) #6
  %263 = trunc i32 %262 to i16
  %264 = call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %263, ptr noundef nonnull @fs_bio_set) #6
  %265 = getelementptr inbounds %struct.bio, ptr %264, i32 0, i32 3
  %266 = load i16, ptr %265, align 4
  %267 = and i16 %266, -2049
  store i16 %267, ptr %265, align 4
  %268 = getelementptr inbounds %struct.bio, ptr %264, i32 0, i32 1
  %269 = load ptr, ptr %268, align 4
  %270 = icmp eq ptr %269, %14
  br i1 %270, label %273, label %271

271:                                              ; preds = %261
  %272 = and i16 %266, -2177
  store i16 %272, ptr %265, align 4
  br label %273

273:                                              ; preds = %271, %261
  store ptr %14, ptr %268, align 4
  %274 = load i64, ptr %4, align 8
  %275 = shl i64 %274, %45
  %276 = getelementptr inbounds %struct.bio, ptr %264, i32 0, i32 8
  store i64 %275, ptr %276, align 4
  %277 = getelementptr inbounds %struct.bio, ptr %264, i32 0, i32 10
  store ptr @mpage_end_io, ptr %277, align 4
  %278 = getelementptr inbounds %struct.bio, ptr %264, i32 0, i32 2
  store i32 %28, ptr %278, align 4
  br label %279

279:                                              ; preds = %273, %258
  %280 = phi ptr [ %264, %273 ], [ %259, %258 ]
  %281 = shl i32 %249, %8
  %282 = call i32 @bio_add_page(ptr noundef %280, ptr noundef %78, i32 noundef %281, i32 noundef 0) #6
  %283 = icmp slt i32 %282, %281
  br i1 %283, label %256, label %284

284:                                              ; preds = %279
  %285 = load i32, ptr %29, align 8
  %286 = and i32 %285, 512
  %287 = icmp ne i32 %286, 0
  %288 = load i32, ptr %30, align 4
  %289 = icmp eq i32 %250, %288
  %290 = select i1 %287, i1 %289, i1 false
  %291 = or i1 %290, %248
  br i1 %291, label %292, label %293

292:                                              ; preds = %284
  call void @submit_bio(ptr noundef %280) #6
  br label %317

293:                                              ; preds = %284
  %294 = load i64, ptr %47, align 8
  br label %317

295:                                              ; preds = %195, %192, %77
  %296 = phi i32 [ %50, %77 ], [ %152, %192 ], [ %152, %195 ]
  %297 = icmp eq ptr %52, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %295
  call void @submit_bio(ptr noundef nonnull %52) #6
  br label %299

299:                                              ; preds = %298, %295
  %300 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1
  %301 = load volatile i32, ptr %300, align 4
  %302 = and i32 %301, 1
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %306, label %304, !prof !16

304:                                              ; preds = %299
  %305 = add i32 %301, -1
  br label %308

306:                                              ; preds = %299
  %307 = ptrtoint ptr %78 to i32
  br label %308

308:                                              ; preds = %306, %304
  %309 = phi i32 [ %305, %304 ], [ %307, %306 ]
  %310 = inttoptr i32 %309 to ptr
  %311 = load volatile i32, ptr %310, align 4
  %312 = and i32 %311, 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %308
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !18
  call void @unlock_page(ptr noundef %78) #6
  br label %317

315:                                              ; preds = %308
  %316 = call i32 @block_read_full_page(ptr noundef %78, ptr noundef nonnull @ext4_get_block) #6
  br label %317

317:                                              ; preds = %315, %314, %293, %292, %230, %179
  %318 = phi ptr [ null, %314 ], [ null, %315 ], [ %52, %179 ], [ %52, %230 ], [ null, %292 ], [ %280, %293 ]
  %319 = phi i64 [ %51, %314 ], [ %51, %315 ], [ %51, %179 ], [ %51, %230 ], [ %51, %292 ], [ %294, %293 ]
  %320 = phi i32 [ %296, %314 ], [ %296, %315 ], [ %152, %179 ], [ %152, %230 ], [ %250, %292 ], [ %250, %293 ]
  br i1 %15, label %338, label %321

321:                                              ; preds = %317
  %322 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1
  %323 = load volatile i32, ptr %322, align 4
  %324 = and i32 %323, 1
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %328, label %326, !prof !16

326:                                              ; preds = %321
  %327 = add i32 %323, -1
  br label %330

328:                                              ; preds = %321
  %329 = ptrtoint ptr %78 to i32
  br label %330

330:                                              ; preds = %328, %326
  %331 = phi i32 [ %327, %326 ], [ %329, %328 ]
  %332 = inttoptr i32 %331 to ptr
  %333 = getelementptr inbounds %struct.page, ptr %332, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %333) #6, !srcloc !11
  %334 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %333, ptr %333, i32 1, ptr elementtype(i32) %333) #6, !srcloc !20
  %335 = extractvalue { i32, i32 } %334, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !21
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %330
  call void @__put_page(ptr noundef %332) #6
  br label %338

338:                                              ; preds = %337, %330, %317
  %339 = add i32 %49, -1
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %48

341:                                              ; preds = %338
  %342 = icmp eq ptr %318, null
  br i1 %342, label %344, label %343

343:                                              ; preds = %341
  call void @submit_bio(ptr noundef nonnull %318) #6
  br label %344

344:                                              ; preds = %343, %341, %20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mpage_end_io(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 2
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 1
  store i32 -32, ptr %16, align 4
  %17 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 1, i32 1
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 1, i32 1, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 1, i32 2
  store ptr @decrypt_work, ptr %19, align 4
  br label %31

20:                                               ; preds = %9
  store i32 2, ptr %10, align 4
  %21 = and i32 %12, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 1
  store i32 -32, ptr %24, align 4
  %25 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 1, i32 1
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 1, i32 1, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %3, i32 0, i32 1, i32 2
  store ptr @verity_work, ptr %27, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 9, ptr noundef null) #6
  br label %31

28:                                               ; preds = %20
  store i32 3, ptr %10, align 4
  %29 = load ptr, ptr %3, align 4
  tail call fastcc void @__read_end_io(ptr noundef %29) #6
  br label %31

30:                                               ; preds = %5, %1
  tail call fastcc void @__read_end_io(ptr noundef %0)
  br label %31

31:                                               ; preds = %30, %28, %23, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ext4_init_post_read_processing() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  store ptr %1, ptr @bio_post_read_ctx_cache, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @mempool_create(i32 noundef 128, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %1) #6
  store ptr %4, ptr @bio_post_read_ctx_pool, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr @bio_post_read_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #6
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = phi i32 [ 0, %3 ], [ -12, %0 ], [ -12, %6 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ext4_exit_post_read_processing() local_unnamed_addr #0 {
  %1 = load ptr, ptr @bio_post_read_ctx_pool, align 4
  tail call void @mempool_destroy(ptr noundef %1) #6
  %2 = load ptr, ptr @bio_post_read_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__read_end_io(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %81, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  %7 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  br label %8

8:                                                ; preds = %77, %5
  %9 = phi i32 [ 0, %5 ], [ %36, %77 ]
  %10 = phi i32 [ 0, %5 ], [ %35, %77 ]
  %11 = phi ptr [ null, %5 ], [ %25, %77 ]
  %12 = load ptr, ptr %6, align 4
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr %struct.page, ptr %11, i32 1
  br label %24

16:                                               ; preds = %8
  %17 = getelementptr %struct.bio_vec, ptr %12, i32 %10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.bio_vec, ptr %12, i32 %10, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 12
  %22 = getelementptr %struct.page, ptr %18, i32 %21
  %23 = and i32 %20, 4095
  br label %24

24:                                               ; preds = %16, %14
  %25 = phi ptr [ %22, %16 ], [ %15, %14 ]
  %26 = phi i32 [ %23, %16 ], [ 0, %14 ]
  %27 = sub nuw nsw i32 4096, %26
  %28 = getelementptr %struct.bio_vec, ptr %12, i32 %10, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %29, %9
  %31 = tail call i32 @llvm.umin.i32(i32 %27, i32 %30) #6
  %32 = add i32 %31, %9
  %33 = icmp eq i32 %32, %29
  %34 = zext i1 %33 to i32
  %35 = add nuw nsw i32 %10, %34
  %36 = select i1 %33, i32 0, i32 %32
  %37 = load i8, ptr %7, align 2
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !16

44:                                               ; preds = %39
  %45 = add i32 %41, -1
  br label %48

46:                                               ; preds = %39
  %47 = ptrtoint ptr %25 to i32
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = inttoptr i32 %49 to ptr
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %48, %24
  %55 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59, !prof !16

59:                                               ; preds = %54
  %60 = add i32 %56, -1
  br label %63

61:                                               ; preds = %54
  %62 = ptrtoint ptr %25 to i32
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = inttoptr i32 %64 to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %65) #6
  %66 = load volatile i32, ptr %55, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69, !prof !16

69:                                               ; preds = %63
  %70 = add i32 %66, -1
  br label %73

71:                                               ; preds = %63
  %72 = ptrtoint ptr %25 to i32
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = inttoptr i32 %74 to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %75) #6
  br label %77

76:                                               ; preds = %48
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %25) #6
  br label %77

77:                                               ; preds = %76, %73
  tail call void @unlock_page(ptr noundef %25) #6
  %78 = load i16, ptr %2, align 4
  %79 = zext i16 %78 to i32
  %80 = icmp ult i32 %35, %79
  br i1 %80, label %8, label %81

81:                                               ; preds = %77, %1
  %82 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr @bio_post_read_ctx_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %83, ptr noundef %86) #6
  br label %87

87:                                               ; preds = %85, %81
  tail call void @bio_put(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @decrypt_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  switch i32 %4, label %28 [
    i32 0, label %9
    i32 1, label %6
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 20
  %8 = load i32, ptr %7, align 4
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  store i32 -32, ptr %0, align 4
  %15 = getelementptr i8, ptr %0, i32 4
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 8
  store ptr %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %0, i32 12
  store ptr @decrypt_work, ptr %17, align 4
  br label %30

18:                                               ; preds = %9
  store i32 2, ptr %3, align 4
  br label %19

19:                                               ; preds = %18, %6
  %20 = phi i32 [ %8, %6 ], [ %11, %18 ]
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  store i32 -32, ptr %0, align 4
  %24 = getelementptr i8, ptr %0, i32 4
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr i8, ptr %0, i32 8
  store ptr %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %0, i32 12
  store ptr @verity_work, ptr %26, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 9, ptr noundef null) #6
  br label %30

27:                                               ; preds = %19
  store i32 3, ptr %3, align 4
  br label %28

28:                                               ; preds = %27, %1
  %29 = load ptr, ptr %2, align 4
  tail call fastcc void @__read_end_io(ptr noundef %29) #6
  br label %30

30:                                               ; preds = %28, %23, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @verity_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @bio_post_read_ctx_pool, align 4
  tail call void @mempool_free(ptr noundef %2, ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 11
  store ptr null, ptr %5, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 208, i32 noundef 9, ptr noundef null) #6
  tail call fastcc void @__read_end_io(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152938763, i64 2152939252, i64 2152938800, i64 2152938856, i64 2152938890, i64 2152938914, i64 2152938955, i64 2152938976, i64 2152939004, i64 2152939038}
!11 = !{i64 419710, i64 2147909681, i64 2147909707, i64 2147909754, i64 2147909776, i64 2147909804, i64 2147909824}
!12 = !{i64 2151825920}
!13 = !{i64 2151825762}
!14 = !{i64 2151826064}
!15 = !{i64 2149259641}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149848960}
!18 = !{i64 2149847939}
!19 = !{i64 2148022548}
!20 = !{i64 2147924934, i64 2147924966, i64 2147924995, i64 2147925029, i64 2147925060, i64 2147925083}
!21 = !{i64 2148022751}
