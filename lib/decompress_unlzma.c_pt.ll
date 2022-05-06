; ModuleID = '/llk/IR/lib/decompress_unlzma.c_pt.bc'
source_filename = "../lib/decompress_unlzma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lzma_header = type <{ i8, i32, i64 }>
%struct.rc = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.writer = type { ptr, i8, i32, i32, i32, ptr, ptr }
%struct.cstate = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Could not allocate input buffer\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bad header\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"LZMA data is corrupt\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"unexpected EOF\00", align 1

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @unlzma(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5, ptr noundef %6) local_unnamed_addr #0 section ".init.text" {
  %8 = alloca %struct.lzma_header, align 1
  %9 = alloca %struct.rc, align 4
  %10 = alloca %struct.writer, align 4
  %11 = alloca %struct.cstate, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %8, i8 0, i32 13, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #9
  %12 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %12, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #9
  %13 = getelementptr inbounds %struct.rc, ptr %9, i32 0, i32 8
  store ptr %6, ptr %13, align 4
  %14 = icmp eq ptr %0, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void %6(ptr noundef nonnull @.str) #9
  br label %232

19:                                               ; preds = %15, %7
  %20 = phi ptr [ %16, %15 ], [ %0, %7 ]
  store i32 0, ptr %11, align 4
  %21 = getelementptr inbounds %struct.cstate, ptr %11, i32 0, i32 4
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.cstate, ptr %11, i32 0, i32 3
  store i32 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cstate, ptr %11, i32 0, i32 2
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.cstate, ptr %11, i32 0, i32 1
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.writer, ptr %10, i32 0, i32 6
  store ptr %8, ptr %25, align 4
  %26 = getelementptr inbounds %struct.writer, ptr %10, i32 0, i32 5
  store ptr %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.writer, ptr %10, i32 0, i32 4
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.writer, ptr %10, i32 0, i32 1
  store i8 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.writer, ptr %10, i32 0, i32 2
  store i32 0, ptr %29, align 4
  %30 = icmp eq ptr %2, null
  %31 = select i1 %30, ptr @nofill, ptr %2
  store ptr %31, ptr %9, align 4
  %32 = getelementptr inbounds %struct.rc, ptr %9, i32 0, i32 2
  store ptr %20, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rc, ptr %9, i32 0, i32 4
  store i32 %1, ptr %33, align 4
  %34 = getelementptr i8, ptr %20, i32 %1
  %35 = getelementptr inbounds %struct.rc, ptr %9, i32 0, i32 3
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.rc, ptr %9, i32 0, i32 1
  %37 = getelementptr inbounds %struct.rc, ptr %9, i32 0, i32 5
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rc, ptr %9, i32 0, i32 6
  store i32 -1, ptr %38, align 4
  br label %39

39:                                               ; preds = %51, %19
  %40 = phi ptr [ %20, %19 ], [ %53, %51 ]
  %41 = phi ptr [ %34, %19 ], [ %54, %51 ]
  %42 = phi ptr [ %20, %19 ], [ %55, %51 ]
  %43 = phi i32 [ 0, %19 ], [ %58, %51 ]
  %44 = icmp ult ptr %42, %41
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = call i32 %31(ptr noundef %40, i32 noundef 65536) #9
  store i32 %46, ptr %33, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void %6(ptr noundef nonnull @.str.3) #9
  br label %49

49:                                               ; preds = %48, %45
  %50 = getelementptr i8, ptr %20, i32 %46
  store ptr %50, ptr %35, align 4
  br label %51

51:                                               ; preds = %49, %39
  %52 = phi ptr [ %20, %49 ], [ %42, %39 ]
  %53 = phi ptr [ %20, %49 ], [ %40, %39 ]
  %54 = phi ptr [ %50, %49 ], [ %41, %39 ]
  %55 = getelementptr i8, ptr %52, i32 1
  store ptr %55, ptr %36, align 4
  %56 = load i8, ptr %52, align 1
  %57 = getelementptr i8, ptr %8, i32 %43
  store i8 %56, ptr %57, align 1
  %58 = add nuw nsw i32 %43, 1
  %59 = icmp eq i32 %58, 13
  br i1 %59, label %60, label %39

60:                                               ; preds = %51
  %61 = load i8, ptr %8, align 1
  %62 = icmp ugt i8 %61, -32
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void %6(ptr noundef nonnull @.str.1) #9
  br label %229

64:                                               ; preds = %60
  %65 = zext i8 %61 to i32
  %66 = icmp ugt i8 %61, 8
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = add nuw nsw i32 %65, 8
  %69 = call i32 @llvm.smin.i32(i32 %65, i32 17)
  %70 = sub nsw i32 %68, %69
  %71 = udiv i32 %70, 9
  %72 = add nuw nsw i32 %71, 1
  %73 = mul i32 %71, -9
  %74 = add nsw i32 %65, -9
  %75 = add i32 %73, %74
  %76 = icmp ugt i32 %70, 35
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = add nuw nsw i32 %71, 5
  %79 = call i32 @llvm.smin.i32(i32 %72, i32 9)
  %80 = sub nuw nsw i32 %78, %79
  %81 = udiv i32 %80, 5
  %82 = add nuw nsw i32 %81, 1
  %83 = mul nsw i32 %81, -5
  %84 = add nsw i32 %71, -4
  %85 = add nsw i32 %83, %84
  br label %86

86:                                               ; preds = %77, %67, %64
  %87 = phi i32 [ %75, %67 ], [ %75, %77 ], [ %65, %64 ]
  %88 = phi i32 [ 0, %67 ], [ %82, %77 ], [ 0, %64 ]
  %89 = phi i32 [ %72, %67 ], [ %85, %77 ], [ 0, %64 ]
  %90 = shl nsw i32 -1, %88
  %91 = shl nsw i32 -1, %89
  %92 = getelementptr inbounds %struct.lzma_header, ptr %8, i32 0, i32 1
  br label %93

93:                                               ; preds = %93, %86
  %94 = phi i64 [ %101, %93 ], [ 0, %86 ]
  %95 = phi i32 [ %102, %93 ], [ 0, %86 ]
  %96 = shl i64 %94, 8
  %97 = sub nuw nsw i32 3, %95
  %98 = getelementptr i8, ptr %92, i32 %97
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i64
  %101 = or i64 %96, %100
  %102 = add nuw nsw i32 %95, 1
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %104, label %93

104:                                              ; preds = %93
  %105 = xor i32 %90, -1
  %106 = trunc i64 %101 to i32
  store i32 %106, ptr %92, align 1
  %107 = getelementptr inbounds %struct.lzma_header, ptr %8, i32 0, i32 2
  br label %108

108:                                              ; preds = %108, %104
  %109 = phi i64 [ %116, %108 ], [ 0, %104 ]
  %110 = phi i32 [ %117, %108 ], [ 0, %104 ]
  %111 = shl i64 %109, 8
  %112 = sub nuw nsw i32 7, %110
  %113 = getelementptr i8, ptr %107, i32 %112
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i64
  %116 = or i64 %111, %115
  %117 = add nuw nsw i32 %110, 1
  %118 = icmp eq i32 %117, 8
  br i1 %118, label %119, label %108

119:                                              ; preds = %108
  %120 = xor i32 %91, -1
  store i64 %116, ptr %107, align 1
  %121 = icmp eq i32 %106, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 1, ptr %92, align 1
  br label %123

123:                                              ; preds = %122, %119
  %124 = phi i32 [ 1, %122 ], [ %106, %119 ]
  %125 = icmp eq ptr %4, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  store ptr %4, ptr %10, align 4
  br label %134

127:                                              ; preds = %123
  %128 = zext i32 %124 to i64
  %129 = call i64 @llvm.umin.i64(i64 %116, i64 %128)
  %130 = trunc i64 %129 to i32
  %131 = getelementptr inbounds %struct.writer, ptr %10, i32 0, i32 3
  store i32 %130, ptr %131, align 4
  %132 = call noalias ptr @vmalloc(i32 noundef %130) #10
  store ptr %132, ptr %10, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %229, label %134

134:                                              ; preds = %127, %126
  %135 = add i32 %89, %87
  %136 = shl i32 768, %135
  %137 = add i32 %136, 1846
  %138 = shl i32 %137, 1
  %139 = call noalias ptr @vmalloc(i32 noundef %138) #10
  %140 = icmp eq ptr %139, null
  br i1 %140, label %225, label %141

141:                                              ; preds = %134
  %142 = icmp sgt i32 %137, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %143, %141
  %144 = phi i32 [ %146, %143 ], [ 0, %141 ]
  %145 = getelementptr i16, ptr %139, i32 %144
  store i16 1024, ptr %145, align 2
  %146 = add nuw nsw i32 %144, 1
  %147 = icmp eq i32 %146, %137
  br i1 %147, label %148, label %143

148:                                              ; preds = %143, %141
  br label %149

149:                                              ; preds = %162, %148
  %150 = phi i32 [ %170, %162 ], [ 0, %148 ]
  %151 = phi ptr [ %163, %162 ], [ %20, %148 ]
  %152 = phi ptr [ %165, %162 ], [ %54, %148 ]
  %153 = phi ptr [ %167, %162 ], [ %55, %148 ]
  %154 = phi i32 [ %171, %162 ], [ 0, %148 ]
  %155 = icmp ult ptr %153, %152
  br i1 %155, label %162, label %156

156:                                              ; preds = %149
  %157 = call i32 %31(ptr noundef %151, i32 noundef 65536) #9
  store i32 %157, ptr %33, align 4
  %158 = icmp slt i32 %157, 1
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  call void %6(ptr noundef nonnull @.str.3) #9
  br label %160

160:                                              ; preds = %159, %156
  %161 = getelementptr i8, ptr %20, i32 %157
  store ptr %161, ptr %35, align 4
  br label %162

162:                                              ; preds = %160, %149
  %163 = phi ptr [ %20, %160 ], [ %151, %149 ]
  %164 = phi ptr [ %20, %160 ], [ %153, %149 ]
  %165 = phi ptr [ %161, %160 ], [ %152, %149 ]
  %166 = shl i32 %150, 8
  %167 = getelementptr i8, ptr %164, i32 1
  store ptr %167, ptr %36, align 4
  %168 = load i8, ptr %164, align 1
  %169 = zext i8 %168 to i32
  %170 = or i32 %166, %169
  store i32 %170, ptr %37, align 4
  %171 = add nuw nsw i32 %154, 1
  %172 = icmp eq i32 %171, 5
  br i1 %172, label %173, label %149

173:                                              ; preds = %162
  %174 = load i64, ptr %107, align 1
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %206, label %176

176:                                              ; preds = %199, %173
  %177 = phi i32 [ %202, %199 ], [ 0, %173 ]
  %178 = and i32 %177, %105
  %179 = load i32, ptr %11, align 4
  %180 = shl i32 %179, 4
  %181 = getelementptr i16, ptr %139, i32 %180
  %182 = getelementptr i16, ptr %181, i32 %178
  %183 = call fastcc i32 @rc_is_bit_0(ptr noundef nonnull %9, ptr noundef %182) #11
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %176
  %186 = call fastcc i32 @process_bit0(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %139, ptr noundef %182, i32 noundef %87, i32 noundef %120) #11
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %185
  call void %6(ptr noundef nonnull @.str.2) #9
  br label %223

189:                                              ; preds = %176
  %190 = call fastcc i32 @process_bit1(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %139, i32 noundef %178, ptr noundef %182) #11
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  call void %6(ptr noundef nonnull @.str.2) #9
  br label %223

193:                                              ; preds = %189
  %194 = load i32, ptr %24, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %193, %185
  %197 = load i32, ptr %33, align 4
  %198 = icmp slt i32 %197, 1
  br i1 %198, label %223, label %199

199:                                              ; preds = %196
  %200 = load i32, ptr %27, align 4
  %201 = load i32, ptr %29, align 4
  %202 = add i32 %201, %200
  %203 = zext i32 %202 to i64
  %204 = load i64, ptr %107, align 1
  %205 = icmp ugt i64 %204, %203
  br i1 %205, label %176, label %206

206:                                              ; preds = %199, %193, %173
  %207 = icmp eq ptr %5, null
  br i1 %207, label %214, label %208

208:                                              ; preds = %206
  %209 = load ptr, ptr %36, align 4
  %210 = load ptr, ptr %32, align 4
  %211 = ptrtoint ptr %209 to i32
  %212 = ptrtoint ptr %210 to i32
  %213 = sub i32 %211, %212
  store i32 %213, ptr %5, align 4
  br label %214

214:                                              ; preds = %208, %206
  %215 = load ptr, ptr %26, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = load ptr, ptr %10, align 4
  %219 = load i32, ptr %29, align 4
  %220 = call i32 %215(ptr noundef %218, i32 noundef %219) #9
  %221 = icmp eq i32 %220, %219
  br i1 %221, label %222, label %223

222:                                              ; preds = %217, %214
  br label %223

223:                                              ; preds = %222, %217, %196, %192, %188
  %224 = phi i32 [ 0, %222 ], [ -1, %217 ], [ -1, %188 ], [ -1, %192 ], [ -1, %196 ]
  call void @vfree(ptr noundef nonnull %139) #9
  br label %225

225:                                              ; preds = %223, %134
  %226 = phi i32 [ -1, %134 ], [ %224, %223 ]
  br i1 %125, label %227, label %229

227:                                              ; preds = %225
  %228 = load ptr, ptr %10, align 4
  call void @vfree(ptr noundef %228) #9
  br label %229

229:                                              ; preds = %227, %225, %127, %63
  %230 = phi i32 [ -1, %63 ], [ -1, %127 ], [ %226, %225 ], [ %226, %227 ]
  br i1 %14, label %231, label %232

231:                                              ; preds = %229
  call void @kfree(ptr noundef nonnull %20) #9
  br label %232

232:                                              ; preds = %231, %229, %18
  %233 = phi i32 [ %230, %229 ], [ %230, %231 ], [ -1, %18 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %8) #9
  ret i32 %233
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rc_is_bit_0(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 16777216
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call fastcc void @rc_do_normalize(ptr noundef %0) #12
  %7 = load i32, ptr %3, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %4, %2 ], [ %7, %6 ]
  %10 = load i16, ptr %1, align 2
  %11 = zext i16 %10 to i32
  %12 = lshr i32 %9, 11
  %13 = mul i32 %12, %11
  %14 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 7
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %13
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @process_bit0(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 section ".init.text" {
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rc, ptr %1, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rc, ptr %1, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  %12 = load i16, ptr %4, align 2
  %13 = zext i16 %12 to i32
  %14 = sub nsw i32 2048, %13
  %15 = ashr i32 %14, 5
  %16 = trunc i32 %15 to i16
  %17 = add i16 %12, %16
  store i16 %17, ptr %4, align 2
  %18 = getelementptr i16, ptr %3, i32 1846
  %19 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = and i32 %23, %6
  %25 = shl i32 %24, %5
  %26 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = sub i32 8, %5
  %30 = lshr i32 %28, %29
  %31 = add i32 %25, %30
  %32 = mul i32 %31, 768
  %33 = getelementptr i16, ptr %18, i32 %32
  %34 = load i32, ptr %2, align 4
  %35 = icmp sgt i32 %34, 6
  br i1 %35, label %36, label %60

36:                                               ; preds = %7
  %37 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = tail call fastcc zeroext i8 @peek_old_byte(ptr noundef %0, i32 noundef %38) #11
  %40 = zext i8 %39 to i32
  %41 = getelementptr i16, ptr %33, i32 256
  br label %42

42:                                               ; preds = %54, %36
  %43 = phi i32 [ 1, %36 ], [ %55, %54 ]
  %44 = phi i32 [ %40, %36 ], [ %45, %54 ]
  %45 = shl i32 %44, 1
  %46 = and i32 %45, 256
  %47 = getelementptr i16, ptr %41, i32 %46
  %48 = getelementptr i16, ptr %47, i32 %43
  %49 = call fastcc i32 @rc_get_bit(ptr noundef %1, ptr noundef %48, ptr noundef nonnull %8) #11
  %50 = icmp eq i32 %49, 0
  %51 = icmp eq i32 %46, 0
  br i1 %50, label %53, label %52

52:                                               ; preds = %42
  br i1 %51, label %57, label %54

53:                                               ; preds = %42
  br i1 %51, label %54, label %57

54:                                               ; preds = %53, %52
  %55 = load i32, ptr %8, align 4
  %56 = icmp slt i32 %55, 256
  br i1 %56, label %42, label %68

57:                                               ; preds = %53, %52
  %58 = load i32, ptr %8, align 4
  %59 = icmp slt i32 %58, 256
  br i1 %59, label %60, label %68

60:                                               ; preds = %57, %7
  %61 = phi i32 [ 1, %7 ], [ %58, %57 ]
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi i32 [ %66, %62 ], [ %61, %60 ]
  %64 = getelementptr i16, ptr %33, i32 %63
  %65 = call fastcc i32 @rc_get_bit(ptr noundef %1, ptr noundef %64, ptr noundef nonnull %8) #11
  %66 = load i32, ptr %8, align 4
  %67 = icmp slt i32 %66, 256
  br i1 %67, label %62, label %68

68:                                               ; preds = %62, %57, %54
  %69 = phi i32 [ %58, %57 ], [ %66, %62 ], [ %55, %54 ]
  %70 = load i32, ptr %2, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = icmp ult i32 %70, 10
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = add nsw i32 %70, -3
  br label %78

76:                                               ; preds = %72
  %77 = add nsw i32 %70, -6
  br label %78

78:                                               ; preds = %76, %74, %68
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ], [ 0, %68 ]
  store i32 %79, ptr %2, align 4
  %80 = trunc i32 %69 to i8
  %81 = tail call fastcc i32 @write_byte(ptr noundef %0, i8 noundef zeroext %80) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  ret i32 %81
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @process_bit1(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #0 section ".init.text" {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.rc, ptr %1, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rc, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %13, %11
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.rc, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %16, %11
  store i32 %17, ptr %15, align 4
  %18 = load i16, ptr %5, align 2
  %19 = lshr i16 %18, 5
  %20 = sub i16 %18, %19
  store i16 %20, ptr %5, align 2
  %21 = getelementptr i16, ptr %3, i32 192
  %22 = load i32, ptr %2, align 4
  %23 = getelementptr i16, ptr %21, i32 %22
  %24 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %1, ptr noundef %23) #11
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr %10, align 4
  br i1 %25, label %44, label %27

27:                                               ; preds = %6
  store i32 %26, ptr %12, align 4
  %28 = load i16, ptr %23, align 2
  %29 = zext i16 %28 to i32
  %30 = sub nsw i32 2048, %29
  %31 = ashr i32 %30, 5
  %32 = trunc i32 %31 to i16
  %33 = add i16 %28, %32
  store i16 %33, ptr %23, align 2
  %34 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %34, align 4
  %39 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %37, align 4
  %41 = load i32, ptr %2, align 4
  %42 = icmp slt i32 %41, 7
  %43 = select i1 %42, i32 0, i32 3
  br label %167

44:                                               ; preds = %6
  %45 = load i32, ptr %12, align 4
  %46 = sub i32 %45, %26
  store i32 %46, ptr %12, align 4
  %47 = load i32, ptr %15, align 4
  %48 = sub i32 %47, %26
  store i32 %48, ptr %15, align 4
  %49 = load i16, ptr %23, align 2
  %50 = lshr i16 %49, 5
  %51 = sub i16 %49, %50
  store i16 %51, ptr %23, align 2
  %52 = getelementptr i16, ptr %3, i32 204
  %53 = load i32, ptr %2, align 4
  %54 = getelementptr i16, ptr %52, i32 %53
  %55 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %1, ptr noundef %54) #11
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr %10, align 4
  br i1 %56, label %95, label %58

58:                                               ; preds = %44
  store i32 %57, ptr %12, align 4
  %59 = load i16, ptr %54, align 2
  %60 = zext i16 %59 to i32
  %61 = sub nsw i32 2048, %60
  %62 = ashr i32 %61, 5
  %63 = trunc i32 %62 to i16
  %64 = add i16 %59, %63
  store i16 %64, ptr %54, align 2
  %65 = getelementptr i16, ptr %3, i32 240
  %66 = load i32, ptr %2, align 4
  %67 = shl i32 %66, 4
  %68 = getelementptr i16, ptr %65, i32 %67
  %69 = getelementptr i16, ptr %68, i32 %4
  %70 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %1, ptr noundef %69) #11
  %71 = icmp eq i32 %70, 0
  %72 = load i32, ptr %10, align 4
  br i1 %71, label %87, label %73

73:                                               ; preds = %58
  store i32 %72, ptr %12, align 4
  %74 = load i16, ptr %69, align 2
  %75 = zext i16 %74 to i32
  %76 = sub nsw i32 2048, %75
  %77 = ashr i32 %76, 5
  %78 = trunc i32 %77 to i16
  %79 = add i16 %74, %78
  store i16 %79, ptr %69, align 2
  %80 = load i32, ptr %2, align 4
  %81 = icmp slt i32 %80, 7
  %82 = select i1 %81, i32 9, i32 11
  store i32 %82, ptr %2, align 4
  %83 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = tail call fastcc zeroext i8 @peek_old_byte(ptr noundef %0, i32 noundef %84) #12
  %86 = tail call fastcc i32 @write_byte(ptr noundef %0, i8 noundef zeroext %85) #12
  br label %320

87:                                               ; preds = %58
  %88 = load i32, ptr %12, align 4
  %89 = sub i32 %88, %72
  store i32 %89, ptr %12, align 4
  %90 = load i32, ptr %15, align 4
  %91 = sub i32 %90, %72
  store i32 %91, ptr %15, align 4
  %92 = load i16, ptr %69, align 2
  %93 = lshr i16 %92, 5
  %94 = sub i16 %92, %93
  store i16 %94, ptr %69, align 2
  br label %163

95:                                               ; preds = %44
  %96 = load i32, ptr %12, align 4
  %97 = sub i32 %96, %57
  store i32 %97, ptr %12, align 4
  %98 = load i32, ptr %15, align 4
  %99 = sub i32 %98, %57
  store i32 %99, ptr %15, align 4
  %100 = load i16, ptr %54, align 2
  %101 = lshr i16 %100, 5
  %102 = sub i16 %100, %101
  store i16 %102, ptr %54, align 2
  %103 = getelementptr i16, ptr %3, i32 216
  %104 = load i32, ptr %2, align 4
  %105 = getelementptr i16, ptr %103, i32 %104
  %106 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %1, ptr noundef %105) #11
  %107 = icmp eq i32 %106, 0
  %108 = load i32, ptr %10, align 4
  br i1 %107, label %118, label %109

109:                                              ; preds = %95
  store i32 %108, ptr %12, align 4
  %110 = load i16, ptr %105, align 2
  %111 = zext i16 %110 to i32
  %112 = sub nsw i32 2048, %111
  %113 = ashr i32 %112, 5
  %114 = trunc i32 %113 to i16
  %115 = add i16 %110, %114
  store i16 %115, ptr %105, align 2
  %116 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  br label %158

118:                                              ; preds = %95
  %119 = load i32, ptr %12, align 4
  %120 = sub i32 %119, %108
  store i32 %120, ptr %12, align 4
  %121 = load i32, ptr %15, align 4
  %122 = sub i32 %121, %108
  store i32 %122, ptr %15, align 4
  %123 = load i16, ptr %105, align 2
  %124 = lshr i16 %123, 5
  %125 = sub i16 %123, %124
  store i16 %125, ptr %105, align 2
  %126 = getelementptr i16, ptr %3, i32 228
  %127 = load i32, ptr %2, align 4
  %128 = getelementptr i16, ptr %126, i32 %127
  %129 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %1, ptr noundef %128) #11
  %130 = icmp eq i32 %129, 0
  %131 = load i32, ptr %10, align 4
  br i1 %130, label %141, label %132

132:                                              ; preds = %118
  store i32 %131, ptr %12, align 4
  %133 = load i16, ptr %128, align 2
  %134 = zext i16 %133 to i32
  %135 = sub nsw i32 2048, %134
  %136 = ashr i32 %135, 5
  %137 = trunc i32 %136 to i16
  %138 = add i16 %133, %137
  store i16 %138, ptr %128, align 2
  %139 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  br label %153

141:                                              ; preds = %118
  %142 = load i32, ptr %12, align 4
  %143 = sub i32 %142, %131
  store i32 %143, ptr %12, align 4
  %144 = load i32, ptr %15, align 4
  %145 = sub i32 %144, %131
  store i32 %145, ptr %15, align 4
  %146 = load i16, ptr %128, align 2
  %147 = lshr i16 %146, 5
  %148 = sub i16 %146, %147
  store i16 %148, ptr %128, align 2
  %149 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 4
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 3
  %152 = load i32, ptr %151, align 4
  store i32 %152, ptr %149, align 4
  br label %153

153:                                              ; preds = %141, %132
  %154 = phi i32 [ %140, %132 ], [ %150, %141 ]
  %155 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 3
  store i32 %156, ptr %157, align 4
  br label %158

158:                                              ; preds = %153, %109
  %159 = phi i32 [ %117, %109 ], [ %154, %153 ]
  %160 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 2
  store i32 %161, ptr %162, align 4
  store i32 %159, ptr %160, align 4
  br label %163

163:                                              ; preds = %158, %87
  %164 = load i32, ptr %2, align 4
  %165 = icmp slt i32 %164, 7
  %166 = select i1 %165, i32 8, i32 11
  br label %167

167:                                              ; preds = %163, %27
  %168 = phi i32 [ %166, %163 ], [ %43, %27 ]
  %169 = phi i32 [ 1332, %163 ], [ 818, %27 ]
  store i32 %168, ptr %2, align 4
  %170 = getelementptr i16, ptr %3, i32 %169
  %171 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %1, ptr noundef %170) #11
  %172 = icmp eq i32 %171, 0
  %173 = load i32, ptr %10, align 4
  br i1 %172, label %184, label %174

174:                                              ; preds = %167
  store i32 %173, ptr %12, align 4
  %175 = load i16, ptr %170, align 2
  %176 = zext i16 %175 to i32
  %177 = sub nsw i32 2048, %176
  %178 = ashr i32 %177, 5
  %179 = trunc i32 %178 to i16
  %180 = add i16 %175, %179
  store i16 %180, ptr %170, align 2
  %181 = getelementptr i16, ptr %170, i32 2
  %182 = shl i32 %4, 3
  %183 = getelementptr i16, ptr %181, i32 %182
  br label %215

184:                                              ; preds = %167
  %185 = load i32, ptr %12, align 4
  %186 = sub i32 %185, %173
  store i32 %186, ptr %12, align 4
  %187 = load i32, ptr %15, align 4
  %188 = sub i32 %187, %173
  store i32 %188, ptr %15, align 4
  %189 = load i16, ptr %170, align 2
  %190 = lshr i16 %189, 5
  %191 = sub i16 %189, %190
  store i16 %191, ptr %170, align 2
  %192 = getelementptr i16, ptr %170, i32 1
  %193 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %1, ptr noundef %192) #11
  %194 = icmp eq i32 %193, 0
  %195 = load i32, ptr %10, align 4
  br i1 %194, label %206, label %196

196:                                              ; preds = %184
  store i32 %195, ptr %12, align 4
  %197 = load i16, ptr %192, align 2
  %198 = zext i16 %197 to i32
  %199 = sub nsw i32 2048, %198
  %200 = ashr i32 %199, 5
  %201 = trunc i32 %200 to i16
  %202 = add i16 %197, %201
  store i16 %202, ptr %192, align 2
  %203 = getelementptr i16, ptr %170, i32 130
  %204 = shl i32 %4, 3
  %205 = getelementptr i16, ptr %203, i32 %204
  br label %215

206:                                              ; preds = %184
  %207 = load i32, ptr %12, align 4
  %208 = sub i32 %207, %195
  store i32 %208, ptr %12, align 4
  %209 = load i32, ptr %15, align 4
  %210 = sub i32 %209, %195
  store i32 %210, ptr %15, align 4
  %211 = load i16, ptr %192, align 2
  %212 = lshr i16 %211, 5
  %213 = sub i16 %211, %212
  store i16 %213, ptr %192, align 2
  %214 = getelementptr i16, ptr %170, i32 258
  br label %215

215:                                              ; preds = %206, %196, %174
  %216 = phi i32 [ 0, %174 ], [ 8, %196 ], [ 16, %206 ]
  %217 = phi ptr [ %183, %174 ], [ %205, %196 ], [ %214, %206 ]
  %218 = phi i32 [ 3, %174 ], [ 3, %196 ], [ 8, %206 ]
  call fastcc void @rc_bit_tree_decode(ptr noundef %1, ptr noundef %217, i32 noundef %218, ptr noundef nonnull %7) #11
  %219 = load i32, ptr %7, align 4
  %220 = add i32 %219, %216
  store i32 %220, ptr %7, align 4
  %221 = load i32, ptr %2, align 4
  %222 = icmp slt i32 %221, 4
  br i1 %222, label %226, label %223

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 1
  %225 = load i32, ptr %224, align 4
  br label %315

226:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  %227 = add nsw i32 %221, 7
  store i32 %227, ptr %2, align 4
  %228 = getelementptr i16, ptr %3, i32 432
  %229 = tail call i32 @llvm.smin.i32(i32 %220, i32 3)
  %230 = shl i32 %229, 6
  %231 = getelementptr i16, ptr %228, i32 %230
  store i32 1, ptr %8, align 4
  br label %232

232:                                              ; preds = %232, %226
  %233 = phi i32 [ 1, %226 ], [ %239, %232 ]
  %234 = phi i32 [ 6, %226 ], [ %235, %232 ]
  %235 = add nsw i32 %234, -1
  %236 = getelementptr i16, ptr %231, i32 %233
  %237 = call fastcc i32 @rc_get_bit(ptr noundef %1, ptr noundef %236, ptr noundef nonnull %8) #12
  %238 = icmp eq i32 %235, 0
  %239 = load i32, ptr %8, align 4
  br i1 %238, label %240, label %232

240:                                              ; preds = %232
  %241 = add i32 %239, -64
  store i32 %241, ptr %8, align 4
  %242 = icmp sgt i32 %241, 3
  br i1 %242, label %243, label %293

243:                                              ; preds = %240
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  %244 = lshr i32 %241, 1
  %245 = and i32 %239, 1
  %246 = or i32 %245, 2
  %247 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 1
  store i32 %246, ptr %247, align 4
  %248 = icmp ult i32 %241, 14
  br i1 %248, label %249, label %257

249:                                              ; preds = %243
  %250 = add nsw i32 %244, -1
  %251 = shl i32 %246, %250
  store i32 %251, ptr %247, align 4
  %252 = getelementptr i16, ptr %3, i32 688
  %253 = getelementptr i16, ptr %252, i32 %251
  %254 = sub nsw i32 64, %239
  %255 = getelementptr i16, ptr %253, i32 %254
  %256 = getelementptr i16, ptr %255, i32 -1
  br label %272

257:                                              ; preds = %243
  %258 = add nsw i32 %244, -5
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %260, %257
  %261 = phi i32 [ %266, %260 ], [ %246, %257 ]
  %262 = phi i32 [ %263, %260 ], [ %258, %257 ]
  %263 = add i32 %262, -1
  %264 = shl i32 %261, 1
  %265 = tail call fastcc i32 @rc_direct_bit(ptr noundef %1) #11
  %266 = or i32 %264, %265
  store i32 %266, ptr %247, align 4
  %267 = icmp eq i32 %263, 0
  br i1 %267, label %268, label %260

268:                                              ; preds = %260, %257
  %269 = phi i32 [ %246, %257 ], [ %266, %260 ]
  %270 = getelementptr i16, ptr %3, i32 802
  %271 = shl i32 %269, 4
  store i32 %271, ptr %247, align 4
  br label %272

272:                                              ; preds = %268, %249
  %273 = phi ptr [ %256, %249 ], [ %270, %268 ]
  %274 = phi i32 [ %250, %249 ], [ 4, %268 ]
  store i32 1, ptr %9, align 4
  br label %275

275:                                              ; preds = %288, %272
  %276 = phi i32 [ %290, %288 ], [ 1, %272 ]
  %277 = phi i32 [ %279, %288 ], [ %274, %272 ]
  %278 = phi i32 [ %289, %288 ], [ 1, %272 ]
  %279 = add i32 %277, -1
  %280 = getelementptr i16, ptr %273, i32 %276
  %281 = call fastcc i32 @rc_get_bit(ptr noundef %1, ptr noundef %280, ptr noundef nonnull %9) #11
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %275
  %284 = load i32, ptr %247, align 4
  %285 = or i32 %284, %278
  store i32 %285, ptr %247, align 4
  br label %286

286:                                              ; preds = %283, %275
  %287 = icmp eq i32 %279, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %286
  %289 = shl i32 %278, 1
  %290 = load i32, ptr %9, align 4
  br label %275

291:                                              ; preds = %286
  %292 = load i32, ptr %247, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %293

293:                                              ; preds = %291, %240
  %294 = phi i32 [ %292, %291 ], [ %241, %240 ]
  %295 = getelementptr inbounds %struct.cstate, ptr %2, i32 0, i32 1
  %296 = add i32 %294, 1
  store i32 %296, ptr %295, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %304, label %298

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 6
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr inbounds %struct.lzma_header, ptr %300, i32 0, i32 1
  %302 = load i32, ptr %301, align 1
  %303 = icmp ugt i32 %296, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %298, %293
  %305 = phi i32 [ -1, %298 ], [ 0, %293 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br label %320

306:                                              ; preds = %298
  %307 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 4
  %308 = load i32, ptr %307, align 4
  %309 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 2
  %310 = load i32, ptr %309, align 4
  %311 = add i32 %310, %308
  %312 = icmp ugt i32 %296, %311
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br i1 %312, label %320, label %313

313:                                              ; preds = %306
  %314 = load i32, ptr %7, align 4
  br label %315

315:                                              ; preds = %313, %223
  %316 = phi i32 [ %296, %313 ], [ %225, %223 ]
  %317 = phi i32 [ %314, %313 ], [ %220, %223 ]
  %318 = add i32 %317, 2
  store i32 %318, ptr %7, align 4
  %319 = tail call fastcc i32 @copy_bytes(ptr noundef %0, i32 noundef %316, i32 noundef %318) #11
  br label %320

320:                                              ; preds = %315, %306, %304, %73
  %321 = phi i32 [ %319, %315 ], [ -1, %306 ], [ %86, %73 ], [ %305, %304 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  ret i32 %321
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @nofill(ptr nocapture noundef readnone %0, i32 noundef %1) #5 section ".init.text" {
  ret i32 -1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rc_do_normalize(ptr nocapture noundef %0) unnamed_addr #6 section ".init.text" {
  %2 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %8(ptr noundef %10, i32 noundef 65536) #9
  %12 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  %13 = icmp slt i32 %11, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef nonnull @.str.3) #9
  %17 = load i32, ptr %12, align 4
  br label %18

18:                                               ; preds = %14, %7
  %19 = phi i32 [ %17, %14 ], [ %11, %7 ]
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 %19
  store ptr %21, ptr %4, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = phi ptr [ %20, %18 ], [ %3, %1 ]
  %24 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %25, 8
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 8
  %30 = getelementptr i8, ptr %23, i32 1
  store ptr %30, ptr %2, align 4
  %31 = load i8, ptr %23, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %29, %32
  store i32 %33, ptr %27, align 4
  ret void
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync)
define internal fastcc zeroext i8 @peek_old_byte(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 section ".init.text" {
  %3 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.lzma_header, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 1
  br label %11

11:                                               ; preds = %11, %6
  %12 = phi i32 [ %14, %11 ], [ %1, %6 ]
  %13 = icmp ugt i32 %12, %10
  %14 = sub i32 %12, %10
  br i1 %13, label %11, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %17, %12
  br label %31

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %21, %1
  %23 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.lzma_header, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 1
  br label %27

27:                                               ; preds = %27, %19
  %28 = phi i32 [ %22, %19 ], [ %30, %27 ]
  %29 = icmp ult i32 %28, %26
  %30 = add i32 %26, %28
  br i1 %29, label %31, label %27

31:                                               ; preds = %27, %15
  %32 = phi i32 [ %18, %15 ], [ %28, %27 ]
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  %35 = load i8, ptr %34, align 1
  ret i8 %35
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rc_get_bit(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #6 section ".init.text" {
  %4 = tail call fastcc i32 @rc_is_bit_0(ptr noundef %0, ptr noundef %1) #11
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 6
  br i1 %5, label %18, label %9

9:                                                ; preds = %3
  store i32 %7, ptr %8, align 4
  %10 = load i16, ptr %1, align 2
  %11 = zext i16 %10 to i32
  %12 = sub nsw i32 2048, %11
  %13 = ashr i32 %12, 5
  %14 = trunc i32 %13 to i16
  %15 = add i16 %10, %14
  store i16 %15, ptr %1, align 2
  %16 = load i32, ptr %2, align 4
  %17 = shl i32 %16, 1
  br label %30

18:                                               ; preds = %3
  %19 = load i32, ptr %8, align 4
  %20 = sub i32 %19, %7
  store i32 %20, ptr %8, align 4
  %21 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %22, %7
  store i32 %23, ptr %21, align 4
  %24 = load i16, ptr %1, align 2
  %25 = lshr i16 %24, 5
  %26 = sub i16 %24, %25
  store i16 %26, ptr %1, align 2
  %27 = load i32, ptr %2, align 4
  %28 = shl i32 %27, 1
  %29 = or i32 %28, 1
  br label %30

30:                                               ; preds = %18, %9
  %31 = phi i32 [ %29, %18 ], [ %17, %9 ]
  %32 = phi i32 [ 1, %18 ], [ 0, %9 ]
  store i32 %31, ptr %2, align 4
  ret i32 %32
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @write_byte(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 1
  store i8 %1, ptr %3, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  %8 = getelementptr i8, ptr %4, i32 %6
  store i8 %1, ptr %8, align 1
  %9 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %5, align 4
  %14 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.lzma_header, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 1
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  store i32 0, ptr %5, align 4
  %20 = load i32, ptr %16, align 1
  %21 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  store i32 %23, ptr %21, align 4
  %24 = load ptr, ptr %0, align 4
  %25 = load i32, ptr %16, align 1
  %26 = tail call i32 %10(ptr noundef %24, i32 noundef %25) #9
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr inbounds %struct.lzma_header, ptr %27, i32 0, i32 1
  %29 = load i32, ptr %28, align 1
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19, %12, %2
  br label %32

32:                                               ; preds = %31, %19
  %33 = phi i32 [ 0, %31 ], [ -1, %19 ]
  ret i32 %33
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rc_bit_tree_decode(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 section ".init.text" {
  store i32 1, ptr %3, align 4
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %13, %6 ], [ 1, %4 ]
  %8 = phi i32 [ %9, %6 ], [ %2, %4 ]
  %9 = add i32 %8, -1
  %10 = getelementptr i16, ptr %1, i32 %7
  %11 = tail call fastcc i32 @rc_get_bit(ptr noundef %0, ptr noundef %10, ptr noundef %3) #11
  %12 = icmp eq i32 %9, 0
  %13 = load i32, ptr %3, align 4
  br i1 %12, label %14, label %6

14:                                               ; preds = %6, %4
  %15 = phi i32 [ 1, %4 ], [ %13, %6 ]
  %16 = shl nsw i32 -1, %2
  %17 = add i32 %15, %16
  store i32 %17, ptr %3, align 4
  ret void
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rc_direct_bit(ptr nocapture noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 16777216
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call fastcc void @rc_do_normalize(ptr noundef %0) #12
  %6 = load i32, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %3, %1 ], [ %6, %5 ]
  %9 = lshr i32 %8, 1
  store i32 %9, ptr %2, align 4
  %10 = getelementptr inbounds %struct.rc, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %9
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = sub i32 %11, %9
  store i32 %14, ptr %10, align 4
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ 1, %13 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @copy_bytes(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.writer, ptr %0, i32 0, i32 6
  br label %6

6:                                                ; preds = %14, %3
  %7 = phi i32 [ %2, %3 ], [ %12, %14 ]
  %8 = tail call fastcc zeroext i8 @peek_old_byte(ptr noundef %0, i32 noundef %1) #12
  %9 = tail call fastcc i32 @write_byte(ptr noundef %0, i8 noundef zeroext %8) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = add i32 %7, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 4
  %16 = zext i32 %15 to i64
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.lzma_header, ptr %17, i32 0, i32 2
  %19 = load i64, ptr %18, align 1
  %20 = icmp ugt i64 %19, %16
  br i1 %20, label %6, label %21

21:                                               ; preds = %14, %11, %6
  %22 = phi i32 [ -1, %6 ], [ 0, %11 ], [ %12, %14 ]
  ret i32 %22
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold inlinehint nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

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
