; ModuleID = '/llk/IR/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [24 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.sun4i_ss_ctx = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [128 x i8], [132 x i8], %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.crypto_skcipher = type { i32, [60 x i8], %struct.crypto_tfm }
%struct.des_ctx = type { [32 x i32] }

@.str = private unnamed_addr constant [44 x i8] c"ERROR: Cannot allocate fallback for %s %ld\0A\00", align 1
@sun4i_ss_cipher_poll._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.sun4i_ss_cipher_poll = private unnamed_addr constant [21 x i8] c"sun4i_ss_cipher_poll\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ERROR: Some SGs are NULL\0A\00", align 1
@sun4i_ss_cipher_poll._rs.2 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"ERROR: sg_miter return null\0A\00", align 1
@sun4i_ss_cipher_poll._rs.4 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@sun4i_ss_opti_poll._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.sun4i_ss_opti_poll = private unnamed_addr constant [19 x i8] c"sun4i_ss_opti_poll\00", align 1
@sun4i_ss_opti_poll._rs.5 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@sun4i_ss_opti_poll._rs.6 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_aes_encrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 4097
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sg_mapping_iter, align 4
  %4 = alloca %struct.sg_mapping_iter, align 4
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = getelementptr i8, ptr %6, i32 104
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %6, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 -36
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !8
  %20 = load i32, ptr %0, align 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %313, label %22

22:                                               ; preds = %1
  %23 = icmp eq ptr %11, null
  %24 = icmp eq ptr %13, null
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = tail call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_cipher_poll._rs, ptr noundef nonnull @__func__.sun4i_ss_cipher_poll) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %313, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.1) #10
  br label %313

32:                                               ; preds = %22
  %33 = getelementptr i8, ptr %15, i32 20
  %34 = load i32, ptr %33, align 4
  %35 = urem i32 %20, %34
  br label %38

36:                                               ; preds = %38
  %37 = icmp eq i32 %35, 0
  br i1 %46, label %50, label %66

38:                                               ; preds = %38, %32
  %39 = phi ptr [ %11, %32 ], [ %47, %38 ]
  %40 = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %41
  %45 = and i32 %44, 3
  %46 = icmp eq i32 %45, 0
  %47 = tail call ptr @sg_next(ptr noundef nonnull %39) #9
  %48 = icmp ne ptr %47, null
  %49 = and i1 %48, %46
  br i1 %49, label %38, label %36

50:                                               ; preds = %50, %36
  %51 = phi ptr [ %59, %50 ], [ %13, %36 ]
  %52 = getelementptr inbounds %struct.scatterlist, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.scatterlist, ptr %51, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, %53
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 0
  %59 = tail call ptr @sg_next(ptr noundef nonnull %51) #9
  %60 = icmp ne ptr %59, null
  %61 = and i1 %60, %58
  br i1 %61, label %50, label %62

62:                                               ; preds = %50
  %63 = select i1 %58, i1 %37, i1 false
  br i1 %63, label %64, label %66

64:                                               ; preds = %62
  %65 = tail call fastcc i32 @sun4i_ss_opti_poll(ptr noundef %0)
  br label %313

66:                                               ; preds = %62, %36
  br i1 %37, label %69, label %67

67:                                               ; preds = %66
  %68 = tail call fastcc i32 @sun4i_ss_cipher_poll_fallback(ptr noundef %0)
  br label %313

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  %73 = icmp eq i32 %17, 0
  %74 = select i1 %72, i1 true, i1 %73
  %75 = and i32 %19, 128
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %69
  %79 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #11
  %80 = icmp eq ptr %79, null
  br i1 %80, label %313, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %10, align 8
  %83 = load i32, ptr %0, align 64
  %84 = sub i32 %83, %17
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %79, ptr noundef %82, i32 noundef %84, i32 noundef %17, i32 noundef 0) #9
  br label %85

85:                                               ; preds = %81, %69
  %86 = phi ptr [ %79, %81 ], [ null, %69 ]
  %87 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 10
  %88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %87) #9
  %89 = getelementptr i8, ptr %6, i32 96
  %90 = load i32, ptr %89, align 4
  %91 = icmp ult i32 %90, 4
  br i1 %91, label %105, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 1
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i32 [ 0, %92 ], [ %101, %94 ]
  %96 = load ptr, ptr %93, align 4
  %97 = getelementptr i8, ptr %96, i32 4
  %98 = shl i32 %95, 2
  %99 = getelementptr i8, ptr %97, i32 %98
  %100 = getelementptr [8 x i32], ptr %7, i32 0, i32 %95
  tail call void @__raw_writesl(ptr noundef %99, ptr noundef %100, i32 noundef 1) #9
  %101 = add nuw nsw i32 %95, 1
  %102 = load i32, ptr %89, align 4
  %103 = lshr i32 %102, 2
  %104 = icmp ult i32 %101, %103
  br i1 %104, label %94, label %105

105:                                              ; preds = %94, %85
  %106 = load ptr, ptr %70, align 4
  %107 = icmp eq ptr %106, null
  %108 = icmp ult i32 %17, 4
  %109 = select i1 %107, i1 true, i1 %108
  br i1 %109, label %136, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 1
  %112 = load i32, ptr %106, align 4
  store i32 %112, ptr %2, align 4
  %113 = load ptr, ptr %111, align 4
  %114 = getelementptr i8, ptr %113, i32 36
  call void @__raw_writesl(ptr noundef %114, ptr noundef nonnull %2, i32 noundef 1) #9
  %115 = icmp ugt i32 %17, 7
  br i1 %115, label %116, label %136

116:                                              ; preds = %110
  %117 = load ptr, ptr %70, align 4
  %118 = getelementptr i8, ptr %117, i32 4
  %119 = load i32, ptr %118, align 4
  store i32 %119, ptr %2, align 4
  %120 = load ptr, ptr %111, align 4
  %121 = getelementptr i8, ptr %120, i32 40
  call void @__raw_writesl(ptr noundef %121, ptr noundef nonnull %2, i32 noundef 1) #9
  %122 = icmp ugt i32 %17, 11
  br i1 %122, label %123, label %136

123:                                              ; preds = %116
  %124 = load ptr, ptr %70, align 4
  %125 = getelementptr i8, ptr %124, i32 8
  %126 = load i32, ptr %125, align 4
  store i32 %126, ptr %2, align 4
  %127 = load ptr, ptr %111, align 4
  %128 = getelementptr i8, ptr %127, i32 44
  call void @__raw_writesl(ptr noundef %128, ptr noundef nonnull %2, i32 noundef 1) #9
  %129 = icmp ugt i32 %17, 15
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load ptr, ptr %70, align 4
  %132 = getelementptr i8, ptr %131, i32 12
  %133 = load i32, ptr %132, align 4
  store i32 %133, ptr %2, align 4
  %134 = load ptr, ptr %111, align 4
  %135 = getelementptr i8, ptr %134, i32 48
  call void @__raw_writesl(ptr noundef %135, ptr noundef nonnull %2, i32 noundef 1) #9
  br label %136

136:                                              ; preds = %130, %123, %116, %110, %105
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  call void @arm_heavy_mb() #9
  %137 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %19) #9, !srcloc !10
  %139 = load i32, ptr %0, align 64
  %140 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 1
  %141 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 2
  %142 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 8
  %143 = icmp eq i32 %139, 0
  br i1 %143, label %301, label %144

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.sg_mapping_iter, ptr %4, i32 0, i32 1
  %146 = getelementptr inbounds %struct.sg_mapping_iter, ptr %4, i32 0, i32 2
  %147 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 9
  br label %148

148:                                              ; preds = %296, %144
  %149 = phi i32 [ 32, %144 ], [ %229, %296 ]
  %150 = phi i32 [ %139, %144 ], [ %224, %296 ]
  %151 = phi i32 [ %139, %144 ], [ %299, %296 ]
  %152 = phi i32 [ 0, %144 ], [ %223, %296 ]
  %153 = phi i32 [ 0, %144 ], [ %298, %296 ]
  %154 = phi i32 [ 0, %144 ], [ %222, %296 ]
  %155 = phi i32 [ 0, %144 ], [ %297, %296 ]
  %156 = phi i32 [ 0, %144 ], [ %221, %296 ]
  br label %157

157:                                              ; preds = %220, %148
  %158 = phi i32 [ %221, %220 ], [ %156, %148 ]
  %159 = phi i32 [ %222, %220 ], [ %154, %148 ]
  %160 = phi i32 [ %223, %220 ], [ %152, %148 ]
  %161 = phi i32 [ %224, %220 ], [ %150, %148 ]
  %162 = phi i32 [ %229, %220 ], [ %149, %148 ]
  %163 = icmp eq i32 %161, 0
  br i1 %163, label %220, label %164

164:                                              ; preds = %157
  %165 = load ptr, ptr %10, align 8
  %166 = call i32 @sg_nents(ptr noundef %165) #9
  call void @sg_miter_start(ptr noundef nonnull %3, ptr noundef %165, i32 noundef %166, i32 noundef 5) #9
  %167 = icmp eq i32 %160, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  %169 = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %3, i32 noundef %160) #9
  br label %170

170:                                              ; preds = %168, %164
  %171 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %3) #9
  %172 = load ptr, ptr %140, align 4
  %173 = icmp ne ptr %172, null
  %174 = select i1 %171, i1 %173, i1 false
  br i1 %174, label %181, label %175

175:                                              ; preds = %170
  %176 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_cipher_poll._rs.2, ptr noundef nonnull @__func__.sun4i_ss_cipher_poll) #9
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %310, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 6
  %180 = load ptr, ptr %179, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.3) #10
  br label %310

181:                                              ; preds = %170
  %182 = lshr i32 %161, 2
  %183 = call i32 @llvm.umin.i32(i32 %162, i32 %182)
  %184 = load i32, ptr %141, align 4
  %185 = sub i32 %184, %159
  %186 = lshr i32 %185, 2
  %187 = call i32 @llvm.umin.i32(i32 %183, i32 %186)
  %188 = icmp eq i32 %187, 0
  %189 = icmp ne i32 %158, 0
  %190 = select i1 %188, i1 true, i1 %189
  br i1 %190, label %196, label %191

191:                                              ; preds = %181
  %192 = load ptr, ptr %137, align 4
  %193 = getelementptr i8, ptr %192, i32 512
  %194 = getelementptr i8, ptr %172, i32 %159
  call void @__raw_writesl(ptr noundef %193, ptr noundef %194, i32 noundef %187) #9
  %195 = shl nuw nsw i32 %187, 2
  br label %210

196:                                              ; preds = %181
  %197 = shl nuw nsw i32 %162, 2
  %198 = sub i32 %197, %158
  %199 = call i32 @llvm.umin.i32(i32 %198, i32 %161)
  %200 = call i32 @llvm.umin.i32(i32 %199, i32 %185)
  %201 = getelementptr i8, ptr %142, i32 %158
  %202 = getelementptr i8, ptr %172, i32 %159
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %201, ptr align 1 %202, i32 %200, i1 false)
  %203 = add i32 %200, %158
  %204 = and i32 %203, 3
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %196
  %207 = load ptr, ptr %137, align 4
  %208 = getelementptr i8, ptr %207, i32 512
  %209 = lshr i32 %203, 2
  call void @__raw_writesl(ptr noundef %208, ptr noundef %142, i32 noundef %209) #9
  br label %210

210:                                              ; preds = %206, %196, %191
  %211 = phi i32 [ %203, %196 ], [ 0, %206 ], [ 0, %191 ]
  %212 = phi i32 [ %200, %196 ], [ %200, %206 ], [ %195, %191 ]
  %213 = sub i32 %161, %212
  %214 = add i32 %212, %159
  %215 = load i32, ptr %141, align 4
  %216 = icmp eq i32 %214, %215
  %217 = select i1 %216, i32 0, i32 %214
  %218 = select i1 %216, i32 %215, i32 0
  %219 = add i32 %218, %160
  call void @sg_miter_stop(ptr noundef nonnull %3) #9
  br label %220

220:                                              ; preds = %210, %157
  %221 = phi i32 [ %211, %210 ], [ %158, %157 ]
  %222 = phi i32 [ %217, %210 ], [ %159, %157 ]
  %223 = phi i32 [ %219, %210 ], [ %160, %157 ]
  %224 = phi i32 [ %213, %210 ], [ 0, %157 ]
  %225 = load ptr, ptr %137, align 4
  %226 = getelementptr i8, ptr %225, i32 68
  %227 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %226) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %228 = lshr i32 %227, 24
  %229 = and i32 %228, 63
  %230 = lshr i32 %227, 16
  %231 = and i32 %230, 63
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %157, label %233

233:                                              ; preds = %220
  %234 = load ptr, ptr %12, align 4
  %235 = call i32 @sg_nents(ptr noundef %234) #9
  call void @sg_miter_start(ptr noundef nonnull %4, ptr noundef %234, i32 noundef %235, i32 noundef 3) #9
  %236 = icmp eq i32 %153, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  %238 = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %4, i32 noundef %153) #9
  br label %239

239:                                              ; preds = %237, %233
  %240 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %4) #9
  %241 = load ptr, ptr %145, align 4
  %242 = icmp ne ptr %241, null
  %243 = select i1 %240, i1 %242, i1 false
  br i1 %243, label %250, label %244

244:                                              ; preds = %239
  %245 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_cipher_poll._rs.4, ptr noundef nonnull @__func__.sun4i_ss_cipher_poll) #9
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %310, label %247

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 6
  %249 = load ptr, ptr %248, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %249, ptr noundef nonnull @.str.3) #10
  br label %310

250:                                              ; preds = %239
  %251 = lshr i32 %151, 2
  %252 = call i32 @llvm.umin.i32(i32 %231, i32 %251)
  %253 = load i32, ptr %146, align 4
  %254 = sub i32 %253, %155
  %255 = lshr i32 %254, 2
  %256 = call i32 @llvm.umin.i32(i32 %252, i32 %255)
  %257 = icmp eq i32 %256, 0
  %258 = load ptr, ptr %137, align 4
  %259 = getelementptr i8, ptr %258, i32 516
  br i1 %257, label %270, label %260

260:                                              ; preds = %250
  %261 = getelementptr i8, ptr %241, i32 %155
  call void @__raw_readsl(ptr noundef %259, ptr noundef %261, i32 noundef %256) #9
  %262 = shl nuw nsw i32 %256, 2
  %263 = sub i32 %151, %262
  %264 = add i32 %262, %155
  %265 = load i32, ptr %146, align 4
  %266 = icmp eq i32 %264, %265
  %267 = select i1 %266, i32 0, i32 %264
  %268 = select i1 %266, i32 %265, i32 0
  %269 = add i32 %268, %153
  br label %296

270:                                              ; preds = %250
  call void @__raw_readsl(ptr noundef %259, ptr noundef %147, i32 noundef %231) #9
  %271 = shl nuw nsw i32 %231, 2
  br label %272

272:                                              ; preds = %292, %270
  %273 = phi i32 [ 0, %270 ], [ %285, %292 ]
  %274 = phi i32 [ %155, %270 ], [ %293, %292 ]
  %275 = phi i32 [ %153, %270 ], [ %294, %292 ]
  %276 = phi i32 [ %151, %270 ], [ %284, %292 ]
  %277 = load i32, ptr %146, align 4
  %278 = sub i32 %277, %274
  %279 = sub i32 %271, %273
  %280 = call i32 @llvm.umin.i32(i32 %278, i32 %279)
  %281 = load ptr, ptr %145, align 4
  %282 = getelementptr i8, ptr %281, i32 %274
  %283 = getelementptr i8, ptr %147, i32 %273
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %282, ptr align 1 %283, i32 %280, i1 false)
  %284 = sub i32 %276, %280
  %285 = add i32 %280, %273
  %286 = add i32 %280, %274
  %287 = load i32, ptr %146, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %292

289:                                              ; preds = %272
  %290 = add i32 %286, %275
  %291 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %4) #9
  br label %292

292:                                              ; preds = %289, %272
  %293 = phi i32 [ 0, %289 ], [ %286, %272 ]
  %294 = phi i32 [ %290, %289 ], [ %275, %272 ]
  %295 = icmp ult i32 %285, %271
  br i1 %295, label %272, label %296

296:                                              ; preds = %292, %260
  %297 = phi i32 [ %267, %260 ], [ %293, %292 ]
  %298 = phi i32 [ %269, %260 ], [ %294, %292 ]
  %299 = phi i32 [ %263, %260 ], [ %284, %292 ]
  call void @sg_miter_stop(ptr noundef nonnull %4) #9
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %148

301:                                              ; preds = %296, %136
  %302 = load ptr, ptr %70, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %310, label %304

304:                                              ; preds = %301
  br i1 %76, label %306, label %305

305:                                              ; preds = %304
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %302, ptr align 64 %86, i32 %17, i1 false)
  call void @kfree_sensitive(ptr noundef %86) #9
  br label %310

306:                                              ; preds = %304
  %307 = load ptr, ptr %12, align 4
  %308 = load i32, ptr %0, align 64
  %309 = sub i32 %308, %17
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %302, ptr noundef %307, i32 noundef %309, i32 noundef %17, i32 noundef 0) #9
  br label %310

310:                                              ; preds = %306, %305, %301, %247, %244, %178, %175
  %311 = phi i32 [ 0, %305 ], [ 0, %306 ], [ 0, %301 ], [ -22, %178 ], [ -22, %175 ], [ -22, %247 ], [ -22, %244 ]
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  call void @arm_heavy_mb() #9
  %312 = load ptr, ptr %137, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %312, i32 0) #9, !srcloc !10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %87, i32 noundef %88) #9
  br label %313

313:                                              ; preds = %310, %78, %67, %64, %29, %26, %1
  %314 = phi i32 [ %68, %67 ], [ %311, %310 ], [ %65, %64 ], [ 0, %1 ], [ -22, %29 ], [ -22, %26 ], [ -12, %78 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %314
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_aes_decrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 4225
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_aes_encrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 1
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_aes_decrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 129
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_des_encrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 4113
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_des_decrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 4241
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_des_encrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 17
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_des_decrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 145
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_des3_encrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 4129
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_des3_decrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 4257
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_des3_encrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 33
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_des3_decrypt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr i8, ptr %3, i32 100
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 161
  store i32 %7, ptr %4, align 64
  %8 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cipher_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(48) %2, i8 0, i32 48, i1 false)
  %6 = getelementptr i8, ptr %4, i32 448
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 24
  store ptr %7, ptr %8, align 4
  %9 = tail call ptr @crypto_alloc_skcipher(ptr noundef %5, i32 noundef 0, i32 noundef 256) #9
  %10 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 28
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef %5, i32 noundef %16) #10
  %17 = load ptr, ptr %10, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %37

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %0, i32 -64
  %21 = load i32, ptr %9, align 64
  %22 = add i32 %21, 128
  store i32 %22, ptr %20, align 64
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @__pm_runtime_resume(ptr noundef %25, i32 noundef 4) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #9, !srcloc !15
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 0, i32 -1, ptr elementtype(i32) %29) #9, !srcloc !16
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  br label %34

34:                                               ; preds = %33, %28
  %35 = load ptr, ptr %10, align 4
  %36 = getelementptr inbounds %struct.crypto_skcipher, ptr %35, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %35, ptr noundef %36) #9
  br label %37

37:                                               ; preds = %34, %19, %12
  %38 = phi i32 [ %18, %12 ], [ %26, %34 ], [ 0, %19 ]
  ret i32 %38
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sun4i_ss_cipher_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 1, i32 4, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_aes_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  switch i32 %2, label %25 [
    i32 16, label %7
    i32 24, label %5
    i32 32, label %6
  ]

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %5, %3
  %8 = phi i32 [ 512, %6 ], [ 256, %5 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 32
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 28
  store i32 %2, ptr %10, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %4, ptr align 1 %1, i32 %2, i1 false)
  %11 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 40
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.crypto_skcipher, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 64
  %15 = and i32 %14, -1048321
  store i32 %15, ptr %13, align 64
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 64
  %19 = and i32 %18, 1048320
  %20 = getelementptr inbounds %struct.crypto_skcipher, ptr %16, i32 0, i32 2
  %21 = load i32, ptr %20, align 64
  %22 = or i32 %21, %19
  store i32 %22, ptr %20, align 64
  %23 = load ptr, ptr %11, align 4
  %24 = tail call i32 @crypto_skcipher_setkey(ptr noundef %23, ptr noundef %1, i32 noundef %2) #9
  br label %25

25:                                               ; preds = %7, %3
  %26 = phi i32 [ %24, %7 ], [ -22, %3 ]
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_des_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.des_ctx, align 4
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #9, !annotation !8
  %6 = call i32 @des_expand_key(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #9
  %7 = icmp eq i32 %6, -126
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 64
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 0, i32 -22
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %6, %3 ], [ %13, %8 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false) #9
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #9, !srcloc !18
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 28
  store i32 %2, ptr %18, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 1 %1, i32 %2, i1 false)
  %19 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 40
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.crypto_skcipher, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 64
  %23 = and i32 %22, -1048321
  store i32 %23, ptr %21, align 64
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 64
  %27 = and i32 %26, 1048320
  %28 = getelementptr inbounds %struct.crypto_skcipher, ptr %24, i32 0, i32 2
  %29 = load i32, ptr %28, align 64
  %30 = or i32 %29, %27
  store i32 %30, ptr %28, align 64
  %31 = load ptr, ptr %19, align 4
  %32 = call i32 @crypto_skcipher_setkey(ptr noundef %31, ptr noundef %1, i32 noundef %2) #9
  br label %33

33:                                               ; preds = %17, %14
  %34 = phi i32 [ %32, %17 ], [ %15, %14 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_des3_setkey(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [6 x i32], align 4
  %5 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1
  %6 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 64
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, ptr noundef align 1 dereferenceable(24) %1, i32 24, i1 false) #9
  %10 = load i32, ptr %4, align 4
  %11 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %10, %12
  %18 = icmp eq i32 %14, %16
  %19 = and i1 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds [6 x i32], ptr %4, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp ne i32 %12, %22
  %26 = icmp ne i32 %16, %24
  %27 = or i1 %25, %26
  %28 = or i1 %9, %27
  br i1 %28, label %31, label %30

29:                                               ; preds = %3
  br i1 %9, label %31, label %30

30:                                               ; preds = %29, %20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #9
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #9, !srcloc !18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %46

31:                                               ; preds = %29, %20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #9
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #9, !srcloc !18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  %32 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 28
  store i32 %2, ptr %32, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %5, ptr align 1 %1, i32 %2, i1 false)
  %33 = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 1, i32 1, i32 40
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.crypto_skcipher, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 64
  %37 = and i32 %36, -1048321
  store i32 %37, ptr %35, align 64
  %38 = load ptr, ptr %33, align 4
  %39 = load i32, ptr %6, align 64
  %40 = and i32 %39, 1048320
  %41 = getelementptr inbounds %struct.crypto_skcipher, ptr %38, i32 0, i32 2
  %42 = load i32, ptr %41, align 64
  %43 = or i32 %42, %40
  store i32 %43, ptr %41, align 64
  %44 = load ptr, ptr %33, align 4
  %45 = call i32 @crypto_skcipher_setkey(ptr noundef %44, ptr noundef %1, i32 noundef %2) #9
  br label %46

46:                                               ; preds = %31, %30
  %47 = phi i32 [ %45, %31 ], [ -126, %30 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_ss_opti_poll(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sg_mapping_iter, align 4
  %4 = alloca %struct.sg_mapping_iter, align 4
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr i8, ptr %6, i32 64
  %8 = getelementptr i8, ptr %6, i32 104
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %6, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -36
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %3, i8 0, i32 44, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !8
  %16 = load i32, ptr %0, align 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %220, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22, %18
  %27 = tail call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_opti_poll._rs, ptr noundef nonnull @__func__.sun4i_ss_opti_poll) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %220, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.1) #10
  br label %220

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = icmp eq i32 %13, 0
  %37 = select i1 %35, i1 true, i1 %36
  %38 = and i32 %15, 128
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %32
  %42 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %220, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %19, align 8
  %46 = load i32, ptr %0, align 64
  %47 = sub i32 %46, %13
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %42, ptr noundef %45, i32 noundef %47, i32 noundef %13, i32 noundef 0) #9
  br label %48

48:                                               ; preds = %44, %32
  %49 = phi ptr [ %42, %44 ], [ null, %32 ]
  %50 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 10
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #9
  %52 = getelementptr i8, ptr %6, i32 96
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %53, 4
  br i1 %54, label %68, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 1
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i32 [ 0, %55 ], [ %64, %57 ]
  %59 = load ptr, ptr %56, align 4
  %60 = getelementptr i8, ptr %59, i32 4
  %61 = shl i32 %58, 2
  %62 = getelementptr i8, ptr %60, i32 %61
  %63 = getelementptr [8 x i32], ptr %7, i32 0, i32 %58
  tail call void @__raw_writesl(ptr noundef %62, ptr noundef %63, i32 noundef 1) #9
  %64 = add nuw nsw i32 %58, 1
  %65 = load i32, ptr %52, align 4
  %66 = lshr i32 %65, 2
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %57, label %68

68:                                               ; preds = %57, %48
  %69 = load ptr, ptr %33, align 4
  %70 = icmp eq ptr %69, null
  %71 = icmp ult i32 %13, 4
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %99, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 1
  %75 = load i32, ptr %69, align 4
  store i32 %75, ptr %2, align 4
  %76 = load ptr, ptr %74, align 4
  %77 = getelementptr i8, ptr %76, i32 36
  call void @__raw_writesl(ptr noundef %77, ptr noundef nonnull %2, i32 noundef 1) #9
  %78 = icmp ugt i32 %13, 7
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load ptr, ptr %33, align 4
  %81 = getelementptr i8, ptr %80, i32 4
  %82 = load i32, ptr %81, align 4
  store i32 %82, ptr %2, align 4
  %83 = load ptr, ptr %74, align 4
  %84 = getelementptr i8, ptr %83, i32 40
  call void @__raw_writesl(ptr noundef %84, ptr noundef nonnull %2, i32 noundef 1) #9
  %85 = icmp ugt i32 %13, 11
  br i1 %85, label %86, label %99

86:                                               ; preds = %79
  %87 = load ptr, ptr %33, align 4
  %88 = getelementptr i8, ptr %87, i32 8
  %89 = load i32, ptr %88, align 4
  store i32 %89, ptr %2, align 4
  %90 = load ptr, ptr %74, align 4
  %91 = getelementptr i8, ptr %90, i32 44
  call void @__raw_writesl(ptr noundef %91, ptr noundef nonnull %2, i32 noundef 1) #9
  %92 = icmp ugt i32 %13, 15
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load ptr, ptr %33, align 4
  %95 = getelementptr i8, ptr %94, i32 12
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %2, align 4
  %97 = load ptr, ptr %74, align 4
  %98 = getelementptr i8, ptr %97, i32 48
  call void @__raw_writesl(ptr noundef %98, ptr noundef nonnull %2, i32 noundef 1) #9
  br label %99

99:                                               ; preds = %93, %86, %79, %73, %68
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  call void @arm_heavy_mb() #9
  %100 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %15) #9, !srcloc !10
  %102 = load i32, ptr %0, align 64
  %103 = lshr i32 %102, 2
  %104 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 1
  %105 = getelementptr inbounds %struct.sg_mapping_iter, ptr %3, i32 0, i32 2
  %106 = getelementptr inbounds %struct.sg_mapping_iter, ptr %4, i32 0, i32 1
  %107 = getelementptr inbounds %struct.sg_mapping_iter, ptr %4, i32 0, i32 2
  br label %108

108:                                              ; preds = %199, %99
  %109 = phi i32 [ 0, %99 ], [ %204, %199 ]
  %110 = phi i32 [ 0, %99 ], [ %158, %199 ]
  %111 = phi i32 [ 0, %99 ], [ %206, %199 ]
  %112 = phi i32 [ 0, %99 ], [ %159, %199 ]
  %113 = phi i32 [ %103, %99 ], [ %202, %199 ]
  %114 = phi i32 [ %103, %99 ], [ %160, %199 ]
  %115 = phi i32 [ 32, %99 ], [ %165, %199 ]
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %157, label %117

117:                                              ; preds = %108
  %118 = load ptr, ptr %19, align 8
  %119 = call i32 @sg_nents(ptr noundef %118) #9
  call void @sg_miter_start(ptr noundef nonnull %3, ptr noundef %118, i32 noundef %119, i32 noundef 5) #9
  %120 = icmp eq i32 %112, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %3, i32 noundef %112) #9
  br label %123

123:                                              ; preds = %121, %117
  %124 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %3) #9
  %125 = load ptr, ptr %104, align 4
  %126 = icmp ne ptr %125, null
  %127 = select i1 %124, i1 %126, i1 false
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_opti_poll._rs.5, ptr noundef nonnull @__func__.sun4i_ss_opti_poll) #9
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %217, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 6
  %133 = load ptr, ptr %132, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.3) #10
  br label %217

134:                                              ; preds = %123
  %135 = call i32 @llvm.umin.i32(i32 %115, i32 %114)
  %136 = load i32, ptr %105, align 4
  %137 = sub i32 %136, %110
  %138 = lshr i32 %137, 2
  %139 = call i32 @llvm.umin.i32(i32 %135, i32 %138)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %134
  %142 = sub i32 %114, %139
  %143 = load ptr, ptr %100, align 4
  %144 = getelementptr i8, ptr %143, i32 512
  %145 = getelementptr i8, ptr %125, i32 %110
  call void @__raw_writesl(ptr noundef %144, ptr noundef %145, i32 noundef %139) #9
  %146 = shl nuw nsw i32 %139, 2
  %147 = add i32 %146, %110
  %148 = load i32, ptr %105, align 4
  br label %149

149:                                              ; preds = %141, %134
  %150 = phi i32 [ %148, %141 ], [ %136, %134 ]
  %151 = phi i32 [ %147, %141 ], [ %110, %134 ]
  %152 = phi i32 [ %142, %141 ], [ %114, %134 ]
  %153 = icmp eq i32 %151, %150
  %154 = select i1 %153, i32 0, i32 %151
  %155 = select i1 %153, i32 %150, i32 0
  %156 = add i32 %155, %112
  call void @sg_miter_stop(ptr noundef nonnull %3) #9
  br label %157

157:                                              ; preds = %149, %108
  %158 = phi i32 [ %154, %149 ], [ %110, %108 ]
  %159 = phi i32 [ %156, %149 ], [ %112, %108 ]
  %160 = phi i32 [ %152, %149 ], [ 0, %108 ]
  %161 = load ptr, ptr %100, align 4
  %162 = getelementptr i8, ptr %161, i32 68
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #9, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %164 = lshr i32 %163, 24
  %165 = and i32 %164, 63
  %166 = lshr i32 %163, 16
  %167 = and i32 %166, 63
  %168 = load ptr, ptr %23, align 4
  %169 = call i32 @sg_nents(ptr noundef %168) #9
  call void @sg_miter_start(ptr noundef nonnull %4, ptr noundef %168, i32 noundef %169, i32 noundef 3) #9
  %170 = icmp eq i32 %111, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %157
  %172 = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %4, i32 noundef %111) #9
  br label %173

173:                                              ; preds = %171, %157
  %174 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %4) #9
  %175 = load ptr, ptr %106, align 4
  %176 = icmp ne ptr %175, null
  %177 = select i1 %174, i1 %176, i1 false
  br i1 %177, label %184, label %178

178:                                              ; preds = %173
  %179 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_opti_poll._rs.6, ptr noundef nonnull @__func__.sun4i_ss_opti_poll) #9
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %217, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %9, i32 0, i32 6
  %183 = load ptr, ptr %182, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.3) #10
  br label %217

184:                                              ; preds = %173
  %185 = call i32 @llvm.umin.i32(i32 %167, i32 %113)
  %186 = load i32, ptr %107, align 4
  %187 = sub i32 %186, %109
  %188 = lshr i32 %187, 2
  %189 = call i32 @llvm.umin.i32(i32 %185, i32 %188)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %184
  %192 = sub i32 %113, %189
  %193 = load ptr, ptr %100, align 4
  %194 = getelementptr i8, ptr %193, i32 516
  %195 = getelementptr i8, ptr %175, i32 %109
  call void @__raw_readsl(ptr noundef %194, ptr noundef %195, i32 noundef %189) #9
  %196 = shl nuw nsw i32 %189, 2
  %197 = add i32 %196, %109
  %198 = load i32, ptr %107, align 4
  br label %199

199:                                              ; preds = %191, %184
  %200 = phi i32 [ %198, %191 ], [ %186, %184 ]
  %201 = phi i32 [ %197, %191 ], [ %109, %184 ]
  %202 = phi i32 [ %192, %191 ], [ %113, %184 ]
  %203 = icmp eq i32 %201, %200
  %204 = select i1 %203, i32 0, i32 %201
  %205 = select i1 %203, i32 %200, i32 0
  %206 = add i32 %205, %111
  call void @sg_miter_stop(ptr noundef nonnull %4) #9
  %207 = icmp eq i32 %202, 0
  br i1 %207, label %208, label %108

208:                                              ; preds = %199
  %209 = load ptr, ptr %33, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %217, label %211

211:                                              ; preds = %208
  br i1 %39, label %213, label %212

212:                                              ; preds = %211
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %209, ptr align 64 %49, i32 %13, i1 false)
  call void @kfree_sensitive(ptr noundef %49) #9
  br label %217

213:                                              ; preds = %211
  %214 = load ptr, ptr %23, align 4
  %215 = load i32, ptr %0, align 64
  %216 = sub i32 %215, %13
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %209, ptr noundef %214, i32 noundef %216, i32 noundef %13, i32 noundef 0) #9
  br label %217

217:                                              ; preds = %213, %212, %208, %181, %178, %131, %128
  %218 = phi i32 [ 0, %212 ], [ 0, %213 ], [ 0, %208 ], [ -22, %131 ], [ -22, %128 ], [ -22, %181 ], [ -22, %178 ]
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  call void @arm_heavy_mb() #9
  %219 = load ptr, ptr %100, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 0) #9, !srcloc !10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %51) #9
  br label %220

220:                                              ; preds = %217, %41, %29, %26, %1
  %221 = phi i32 [ %218, %217 ], [ 0, %1 ], [ -22, %29 ], [ -22, %26 ], [ -12, %41 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %221
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_ss_cipher_poll_fallback(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2
  %6 = getelementptr i8, ptr %3, i32 108
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 3
  store ptr %8, ptr %9, align 16
  %10 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 1
  store ptr %13, ptr %16, align 8
  %17 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 2
  store ptr %15, ptr %17, align 4
  %18 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 4, i32 4
  store i32 %11, ptr %18, align 4
  %19 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %0, align 64
  %24 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 2
  store ptr %20, ptr %26, align 8
  %27 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 3
  store ptr %22, ptr %27, align 4
  store i32 %23, ptr %5, align 64
  %28 = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 2, i32 1
  store ptr %25, ptr %28, align 4
  %29 = load i32, ptr %4, align 64
  %30 = and i32 %29, 128
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %1
  %33 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %5) #9
  br label %36

34:                                               ; preds = %1
  %35 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %5) #9
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_skip(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!9 = !{i64 2153349910}
!10 = !{i64 2685530}
!11 = !{i64 2685948}
!12 = !{i64 2153358415}
!13 = !{i64 2153365341}
!14 = !{i64 2147965510}
!15 = !{i64 463820, i64 2147953791, i64 2147953817, i64 2147953864, i64 2147953886, i64 2147953914, i64 2147953934}
!16 = !{i64 450389, i64 450414, i64 450436, i64 450452, i64 450464, i64 450484, i64 450508, i64 450524, i64 450536}
!17 = !{i64 2147965636}
!18 = !{i64 2148679863}
!19 = !{i64 2153332738}
!20 = !{i64 2153337920}
!21 = !{i64 2153342894}
