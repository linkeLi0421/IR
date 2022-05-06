; ModuleID = '/llk/IR/init/calibrate.c_pt.bc'
source_filename = "../init/calibrate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__setup_str_lpj_setup = internal constant [5 x i8] c"lpj=\00", section ".init.rodata", align 1
@__setup_lpj_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_lpj_setup, ptr @lpj_setup, i32 0 }, section ".init.setup", align 4
@calibrate_delay.printed = internal unnamed_addr global i1 false, align 1
@cpu_loops_per_jiffy = internal global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str = private unnamed_addr constant [63 x i8] c"\016Calibrating delay loop (skipped) already calibrated this CPU\00", align 1
@preset_lpj = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"\016Calibrating delay loop (skipped) preset value.. \00", align 1
@lpj_fine = dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"\016Calibrating delay loop (skipped), value calculated using timer frequency.. \00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\016Calibrating delay using timer specific routine.. \00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\016Calibrating delay loop... \00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\01c%lu.%02lu BogoMIPS (lpj=%lu)\0A\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.6 = private unnamed_addr constant [101 x i8] c"\015calibrate_delay_direct() ignoring timer_rate as we had a TSC wrap around start=%lu >=post_end=%lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"\015calibrate_delay_direct() dropping min bogoMips estimate %d = %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"\015calibrate_delay_direct() dropping max bogoMips estimate %d = %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [156 x i8] c"\015calibrate_delay_direct() failed to get a good estimate for loops_per_jiffy.\0AProbably due to long platform interrupts. Consider using \22lpj=\22 boot option.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__setup_lpj_setup], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @lpj_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @simple_strtoul(ptr noundef %0, ptr noundef null, i32 noundef 0) #7
  store i32 %2, ptr @preset_lpj, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @calibrate_delay_is_known() local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @calibration_delay_done() local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @calibrate_delay() local_unnamed_addr #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 4
  %7 = tail call ptr @llvm.thread.pointer() #7
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @cpu_loops_per_jiffy to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  %17 = load i1, ptr @calibrate_delay.printed, align 1
  br i1 %17, label %266, label %18

18:                                               ; preds = %16
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %269

20:                                               ; preds = %0
  %21 = load i32, ptr @preset_lpj, align 4
  %22 = icmp eq i32 %21, 0
  %23 = load i1, ptr @calibrate_delay.printed, align 1
  br i1 %22, label %27, label %24

24:                                               ; preds = %20
  br i1 %23, label %266, label %25

25:                                               ; preds = %24
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %269

27:                                               ; preds = %20
  %28 = xor i1 %23, true
  %29 = load i32, ptr @lpj_fine, align 4
  %30 = icmp ne i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %269

34:                                               ; preds = %27
  %35 = tail call i32 @calibrate_delay_is_known()
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %269

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #7
  store i32 0, ptr %1, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #7, !annotation !8
  %38 = call i32 @read_current_timer(ptr noundef nonnull %1) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %249, label %40

40:                                               ; preds = %124, %37
  %41 = phi i32 [ %129, %124 ], [ 0, %37 ]
  %42 = phi i32 [ %128, %124 ], [ -1, %37 ]
  %43 = phi i32 [ %127, %124 ], [ -1, %37 ]
  %44 = phi i32 [ %126, %124 ], [ 0, %37 ]
  %45 = phi i32 [ %125, %124 ], [ 0, %37 ]
  store i32 0, ptr %1, align 4
  %46 = call i32 @read_current_timer(ptr noundef nonnull %2) #7
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = add i32 %47, 1
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = sub i32 %48, %49
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %58

52:                                               ; preds = %52, %40
  %53 = load i32, ptr %2, align 4
  store i32 %53, ptr %1, align 4
  %54 = call i32 @read_current_timer(ptr noundef nonnull %2) #7
  %55 = load volatile i32, ptr @jiffies, align 64
  %56 = sub i32 %48, %55
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %52, label %58

58:                                               ; preds = %52, %40
  %59 = call i32 @read_current_timer(ptr noundef nonnull %3) #7
  %60 = load i32, ptr %3, align 4
  store i32 %60, ptr %4, align 4
  %61 = add i32 %47, 2
  %62 = load volatile i32, ptr @jiffies, align 64
  %63 = sub i32 %61, %62
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = call i32 @read_current_timer(ptr noundef nonnull %4) #7
  %67 = load volatile i32, ptr @jiffies, align 64
  %68 = sub i32 %61, %67
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %76

70:                                               ; preds = %70, %65
  %71 = load i32, ptr %4, align 4
  %72 = call i32 @read_current_timer(ptr noundef nonnull %4) #7
  %73 = load volatile i32, ptr @jiffies, align 64
  %74 = sub i32 %61, %73
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %70, label %76

76:                                               ; preds = %70, %65, %58
  %77 = phi i32 [ 0, %58 ], [ %60, %65 ], [ %71, %70 ]
  %78 = call i32 @read_current_timer(ptr noundef nonnull %5) #7
  %79 = load i32, ptr %5, align 4
  %80 = load i32, ptr %1, align 4
  %81 = sub i32 %79, %80
  %82 = load i32, ptr %3, align 4
  %83 = sub i32 %82, %77
  %84 = load i32, ptr %2, align 4
  %85 = icmp ult i32 %84, %79
  br i1 %85, label %91, label %86

86:                                               ; preds = %76
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %84, i32 noundef %79) #8
  %88 = load i32, ptr %2, align 4
  %89 = load i32, ptr %5, align 4
  %90 = load i32, ptr %1, align 4
  br label %91

91:                                               ; preds = %86, %76
  %92 = phi i32 [ %90, %86 ], [ %80, %76 ]
  %93 = phi i32 [ %89, %86 ], [ %79, %76 ]
  %94 = phi i32 [ %88, %86 ], [ %84, %76 ]
  %95 = icmp ult i32 %94, %93
  %96 = icmp ne i32 %92, 0
  %97 = select i1 %95, i1 %96, i1 false
  %98 = icmp ne i32 %77, 0
  %99 = select i1 %97, i1 %98, i1 false
  %100 = add i32 %83, %81
  %101 = lshr i32 %81, 3
  %102 = icmp ult i32 %100, %101
  %103 = select i1 %99, i1 %102, i1 false
  br i1 %103, label %104, label %122

104:                                              ; preds = %91
  %105 = add i32 %44, 1
  %106 = add i32 %81, %45
  %107 = getelementptr [5 x i32], ptr %6, i32 0, i32 %41
  store i32 %81, ptr %107, align 4
  %108 = icmp slt i32 %43, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = getelementptr [5 x i32], ptr %6, i32 0, i32 %43
  %111 = load i32, ptr %110, align 4
  %112 = icmp ugt i32 %81, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %104
  br label %114

114:                                              ; preds = %113, %109
  %115 = phi i32 [ %41, %113 ], [ %43, %109 ]
  %116 = icmp slt i32 %42, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = getelementptr [5 x i32], ptr %6, i32 0, i32 %42
  %119 = load i32, ptr %118, align 4
  %120 = icmp ult i32 %81, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117, %114
  br label %124

122:                                              ; preds = %91
  %123 = getelementptr [5 x i32], ptr %6, i32 0, i32 %41
  store i32 0, ptr %123, align 4
  br label %124

124:                                              ; preds = %122, %121, %117
  %125 = phi i32 [ %106, %121 ], [ %106, %117 ], [ %45, %122 ]
  %126 = phi i32 [ %105, %121 ], [ %105, %117 ], [ %44, %122 ]
  %127 = phi i32 [ %115, %121 ], [ %115, %117 ], [ %43, %122 ]
  %128 = phi i32 [ %41, %121 ], [ %42, %117 ], [ %42, %122 ]
  %129 = add nuw nsw i32 %41, 1
  %130 = icmp eq i32 %129, 5
  br i1 %130, label %131, label %40

131:                                              ; preds = %124
  %132 = getelementptr inbounds [5 x i32], ptr %6, i32 0, i32 1
  %133 = getelementptr inbounds [5 x i32], ptr %6, i32 0, i32 2
  %134 = getelementptr inbounds [5 x i32], ptr %6, i32 0, i32 3
  %135 = getelementptr inbounds [5 x i32], ptr %6, i32 0, i32 4
  %136 = icmp ugt i32 %126, 1
  br i1 %136, label %137, label %247

137:                                              ; preds = %241, %131
  %138 = phi i32 [ %245, %241 ], [ %128, %131 ]
  %139 = phi i32 [ %244, %241 ], [ %127, %131 ]
  %140 = phi i32 [ %243, %241 ], [ %126, %131 ]
  %141 = phi i32 [ %242, %241 ], [ %125, %131 ]
  %142 = udiv i32 %141, %140
  %143 = lshr i32 %142, 3
  %144 = getelementptr [5 x i32], ptr %6, i32 0, i32 %139
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr [5 x i32], ptr %6, i32 0, i32 %138
  %147 = load i32, ptr %146, align 4
  %148 = sub i32 %145, %147
  %149 = icmp ult i32 %148, %143
  br i1 %149, label %250, label %150

150:                                              ; preds = %137
  %151 = sub i32 %145, %142
  %152 = sub i32 %142, %147
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %138, i32 noundef %147) #8
  br label %158

156:                                              ; preds = %150
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %139, i32 noundef %145) #8
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi ptr [ %144, %156 ], [ %146, %154 ]
  %160 = phi i32 [ %138, %156 ], [ %139, %154 ]
  store i32 0, ptr %159, align 4
  %161 = load i32, ptr %6, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %158
  %164 = getelementptr [5 x i32], ptr %6, i32 0, i32 %160
  %165 = load i32, ptr %164, align 4
  %166 = icmp ult i32 %161, %165
  %167 = select i1 %166, i32 0, i32 %160
  %168 = icmp ugt i32 %161, %165
  %169 = select i1 %168, i32 0, i32 %160
  br label %170

170:                                              ; preds = %163, %158
  %171 = phi i32 [ 0, %158 ], [ 1, %163 ]
  %172 = phi i32 [ %160, %158 ], [ %169, %163 ]
  %173 = phi i32 [ %160, %158 ], [ %167, %163 ]
  %174 = load i32, ptr %132, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %170
  %177 = add nuw nsw i32 %171, 1
  %178 = add i32 %174, %161
  %179 = getelementptr [5 x i32], ptr %6, i32 0, i32 %173
  %180 = load i32, ptr %179, align 4
  %181 = icmp ult i32 %174, %180
  %182 = select i1 %181, i32 1, i32 %173
  %183 = getelementptr [5 x i32], ptr %6, i32 0, i32 %172
  %184 = load i32, ptr %183, align 4
  %185 = icmp ugt i32 %174, %184
  %186 = select i1 %185, i32 1, i32 %172
  br label %187

187:                                              ; preds = %176, %170
  %188 = phi i32 [ %161, %170 ], [ %178, %176 ]
  %189 = phi i32 [ %171, %170 ], [ %177, %176 ]
  %190 = phi i32 [ %172, %170 ], [ %186, %176 ]
  %191 = phi i32 [ %173, %170 ], [ %182, %176 ]
  %192 = load i32, ptr %133, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %205, label %194

194:                                              ; preds = %187
  %195 = add nuw nsw i32 %189, 1
  %196 = add i32 %192, %188
  %197 = getelementptr [5 x i32], ptr %6, i32 0, i32 %191
  %198 = load i32, ptr %197, align 4
  %199 = icmp ult i32 %192, %198
  %200 = select i1 %199, i32 2, i32 %191
  %201 = getelementptr [5 x i32], ptr %6, i32 0, i32 %190
  %202 = load i32, ptr %201, align 4
  %203 = icmp ugt i32 %192, %202
  %204 = select i1 %203, i32 2, i32 %190
  br label %205

205:                                              ; preds = %194, %187
  %206 = phi i32 [ %188, %187 ], [ %196, %194 ]
  %207 = phi i32 [ %189, %187 ], [ %195, %194 ]
  %208 = phi i32 [ %190, %187 ], [ %204, %194 ]
  %209 = phi i32 [ %191, %187 ], [ %200, %194 ]
  %210 = load i32, ptr %134, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %205
  %213 = add nuw nsw i32 %207, 1
  %214 = add i32 %210, %206
  %215 = getelementptr [5 x i32], ptr %6, i32 0, i32 %209
  %216 = load i32, ptr %215, align 4
  %217 = icmp ult i32 %210, %216
  %218 = select i1 %217, i32 3, i32 %209
  %219 = getelementptr [5 x i32], ptr %6, i32 0, i32 %208
  %220 = load i32, ptr %219, align 4
  %221 = icmp ugt i32 %210, %220
  %222 = select i1 %221, i32 3, i32 %208
  br label %223

223:                                              ; preds = %212, %205
  %224 = phi i32 [ %206, %205 ], [ %214, %212 ]
  %225 = phi i32 [ %207, %205 ], [ %213, %212 ]
  %226 = phi i32 [ %208, %205 ], [ %222, %212 ]
  %227 = phi i32 [ %209, %205 ], [ %218, %212 ]
  %228 = load i32, ptr %135, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %241, label %230

230:                                              ; preds = %223
  %231 = add nuw nsw i32 %225, 1
  %232 = add i32 %228, %224
  %233 = getelementptr [5 x i32], ptr %6, i32 0, i32 %227
  %234 = load i32, ptr %233, align 4
  %235 = icmp ult i32 %228, %234
  %236 = select i1 %235, i32 4, i32 %227
  %237 = getelementptr [5 x i32], ptr %6, i32 0, i32 %226
  %238 = load i32, ptr %237, align 4
  %239 = icmp ugt i32 %228, %238
  %240 = select i1 %239, i32 4, i32 %226
  br label %241

241:                                              ; preds = %230, %223
  %242 = phi i32 [ %224, %223 ], [ %232, %230 ]
  %243 = phi i32 [ %225, %223 ], [ %231, %230 ]
  %244 = phi i32 [ %226, %223 ], [ %240, %230 ]
  %245 = phi i32 [ %227, %223 ], [ %236, %230 ]
  %246 = icmp ugt i32 %243, 1
  br i1 %246, label %137, label %247

247:                                              ; preds = %241, %131
  %248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %249

249:                                              ; preds = %247, %37
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  br label %260

250:                                              ; preds = %137
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #7
  %251 = icmp ugt i32 %140, %141
  br i1 %251, label %260, label %252

252:                                              ; preds = %250
  %253 = load i1, ptr @calibrate_delay.printed, align 1
  br i1 %253, label %254, label %258

254:                                              ; preds = %252
  %255 = load i32, ptr %10, align 4
  %256 = add i32 %255, ptrtoint (ptr @cpu_loops_per_jiffy to i32)
  %257 = inttoptr i32 %256 to ptr
  br label %266

258:                                              ; preds = %252
  %259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %269

260:                                              ; preds = %250, %249
  %261 = load i1, ptr @calibrate_delay.printed, align 1
  br i1 %261, label %264, label %262

262:                                              ; preds = %260
  %263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %264

264:                                              ; preds = %262, %260
  %265 = call fastcc i32 @calibrate_delay_converge()
  br label %269

266:                                              ; preds = %254, %24, %16
  %267 = phi ptr [ %257, %254 ], [ %13, %24 ], [ %13, %16 ]
  %268 = phi i32 [ %142, %254 ], [ %21, %24 ], [ %14, %16 ]
  store i32 %268, ptr %267, align 4
  br label %280

269:                                              ; preds = %264, %258, %34, %32, %25, %18
  %270 = phi i32 [ %265, %264 ], [ %142, %258 ], [ %35, %34 ], [ %29, %32 ], [ %21, %25 ], [ %14, %18 ]
  %271 = load i1, ptr @calibrate_delay.printed, align 1
  %272 = load i32, ptr %10, align 4
  %273 = add i32 %272, ptrtoint (ptr @cpu_loops_per_jiffy to i32)
  %274 = inttoptr i32 %273 to ptr
  store i32 %270, ptr %274, align 4
  br i1 %271, label %280, label %275

275:                                              ; preds = %269
  %276 = udiv i32 %270, 5000
  %277 = udiv i32 %270, 50
  %278 = urem i32 %277, 100
  %279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %276, i32 noundef %278, i32 noundef %270) #8
  br label %280

280:                                              ; preds = %275, %269, %266
  %281 = phi i32 [ %268, %266 ], [ %270, %275 ], [ %270, %269 ]
  store i32 %281, ptr @loops_per_jiffy, align 4
  store i1 true, ptr @calibrate_delay.printed, align 1
  call void @calibration_delay_done()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @calibrate_delay_converge() unnamed_addr #1 {
  %1 = load volatile i32, ptr @jiffies, align 64
  br label %2

2:                                                ; preds = %2, %0
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = icmp eq i32 %1, %3
  br i1 %4, label %2, label %5

5:                                                ; preds = %2
  %6 = load volatile i32, ptr @jiffies, align 64
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %19, %7 ]
  %9 = phi i32 [ 0, %5 ], [ %15, %7 ]
  %10 = phi i32 [ 0, %5 ], [ %16, %7 ]
  %11 = add i32 %10, 1
  %12 = shl nuw i32 1, %9
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = add i32 %9, %14
  %16 = select i1 %13, i32 0, i32 %11
  %17 = load ptr, ptr @arm_delay_ops, align 4
  %18 = shl i32 %15, 12
  tail call void %17(i32 noundef %18) #7
  %19 = add i32 %15, %8
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = icmp eq i32 %6, %20
  br i1 %21, label %7, label %22

22:                                               ; preds = %7
  %23 = shl i32 %8, 12
  br label %24

24:                                               ; preds = %45, %22
  %25 = phi i32 [ %23, %22 ], [ %46, %45 ]
  %26 = phi i32 [ %18, %22 ], [ %53, %45 ]
  %27 = lshr i32 %25, 8
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %36, %24
  %30 = phi i32 [ %43, %36 ], [ %26, %24 ]
  %31 = phi i32 [ %42, %36 ], [ %25, %24 ]
  %32 = load volatile i32, ptr @jiffies, align 64
  br label %33

33:                                               ; preds = %33, %29
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %33, label %36

36:                                               ; preds = %33
  %37 = add i32 %30, %31
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = load ptr, ptr @arm_delay_ops, align 4
  tail call void %39(i32 noundef %37) #7
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = icmp eq i32 %40, %38
  %42 = select i1 %41, i32 %37, i32 %31
  %43 = lshr i32 %30, 1
  %44 = icmp ugt i32 %43, %27
  br i1 %44, label %29, label %45

45:                                               ; preds = %36, %24
  %46 = phi i32 [ %25, %24 ], [ %42, %36 ]
  %47 = phi i32 [ %26, %24 ], [ %43, %36 ]
  %48 = shl i32 %47, 1
  %49 = add i32 %48, %46
  %50 = shl i32 %26, 1
  %51 = add i32 %50, %25
  %52 = icmp eq i32 %49, %51
  %53 = shl i32 %26, 2
  br i1 %52, label %24, label %54

54:                                               ; preds = %45
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
