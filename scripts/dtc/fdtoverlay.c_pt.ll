; ModuleID = '/llk/IR/scripts/dtc/fdtoverlay.c_pt.bc'
source_filename = "../scripts/dtc/fdtoverlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@verbose = dso_local local_unnamed_addr global i32 0, align 4
@usage_short_opts = internal constant [8 x i8] c"i:o:vhV\00", align 1
@usage_long_opts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.7, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.8, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.9, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.10, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.11, i32 0, ptr null, i32 86 }, %struct.option zeroinitializer], align 16
@usage_synopsis = internal constant [213 x i8] c"apply a number of overlays to a base blob\0A\09fdtoverlay <options> [<overlay.dtbo> [<overlay.dtbo>]]\0A\0A<type>\09s=string, i=int, u=unsigned, x=hex\0A\09Optional modifier prefix:\0A\09\09hh or b=byte, h=2 byte, l=4 byte (default)\00", align 16
@usage_opts_help = internal constant [6 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null], align 16
@.str = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"missing input file\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"missing output file\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"missing overlay file(s)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"input  = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"output = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"overlay[%d] = %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Input base DT blob\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Output DT blob\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Verbose messages\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Print this help and exit\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Print version and exit\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"\0AFailed to read '%s'\0A\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"\0ABase blob is incomplete (%lu / %u bytes read)\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"\0AOverlay '%s' is incomplete (%lu / %u bytes read)\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"\0AFailed to write '%s'\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"malloc() failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\0AFailed to make temporary copy: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"\0AFailed to apply '%s': %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"realloc() failed (len=%zd)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  br label %5

5:                                                ; preds = %16, %2
  %6 = phi ptr [ %17, %16 ], [ null, %2 ]
  %7 = phi ptr [ %9, %16 ], [ null, %2 ]
  br label %8

8:                                                ; preds = %18, %5
  %9 = phi ptr [ %7, %5 ], [ %19, %18 ]
  br label %10

10:                                               ; preds = %12, %8
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef null) #15
  switch i32 %11, label %12 [
    i32 -1, label %21
    i32 104, label %13
    i32 86, label %14
    i32 63, label %15
    i32 105, label %16
    i32 111, label %18
    i32 118, label %20
  ]

12:                                               ; preds = %20, %10
  br label %10

13:                                               ; preds = %10
  tail call void @util_usage(ptr noundef null, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #16
  unreachable

14:                                               ; preds = %10
  tail call void @util_version() #16
  unreachable

15:                                               ; preds = %10
  tail call void @util_usage(ptr noundef nonnull @.str, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #16
  unreachable

16:                                               ; preds = %10
  %17 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %5

18:                                               ; preds = %10
  %19 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %8

20:                                               ; preds = %10
  store i32 1, ptr @verbose, align 4, !tbaa !9
  br label %12

21:                                               ; preds = %10
  %22 = icmp eq ptr %6, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @util_usage(ptr noundef nonnull @.str.1, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #16
  unreachable

24:                                               ; preds = %21
  %25 = icmp eq ptr %9, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void @util_usage(ptr noundef nonnull @.str.2, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #16
  unreachable

27:                                               ; preds = %24
  %28 = load i32, ptr @optind, align 4, !tbaa !9
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29
  %31 = sub i32 %0, %28
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @util_usage(ptr noundef nonnull @.str.3, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #16
  unreachable

34:                                               ; preds = %27
  %35 = load i32, ptr @verbose, align 4, !tbaa !9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, ptr noundef nonnull %6)
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, ptr noundef nonnull %9)
  %40 = zext i32 %31 to i64
  br label %41

41:                                               ; preds = %41, %37
  %42 = phi i64 [ 0, %37 ], [ %47, %41 ]
  %43 = getelementptr inbounds ptr, ptr %30, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = trunc i64 %42 to i32
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i32 noundef %45, ptr noundef %44)
  %47 = add nuw nsw i64 %42, 1
  %48 = icmp eq i64 %47, %40
  br i1 %48, label %49, label %41

49:                                               ; preds = %41, %34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %50 = call ptr @utilfdt_read(ptr noundef nonnull %6, ptr noundef nonnull %3) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load ptr, ptr @stderr, align 8, !tbaa !5
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.17, ptr noundef nonnull %6) #17
  br label %252

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.fdt_header, ptr %50, i64 0, i32 1
  %57 = load i8, ptr %56, align 1, !tbaa !11
  %58 = zext i8 %57 to i32
  %59 = shl nuw i32 %58, 24
  %60 = getelementptr inbounds i8, ptr %56, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !11
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = or i32 %63, %59
  %65 = getelementptr inbounds i8, ptr %56, i64 2
  %66 = load i8, ptr %65, align 1, !tbaa !11
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = or i32 %64, %68
  %70 = getelementptr inbounds i8, ptr %56, i64 3
  %71 = load i8, ptr %70, align 1, !tbaa !11
  %72 = zext i8 %71 to i32
  %73 = or i32 %69, %72
  %74 = zext i32 %73 to i64
  %75 = load i64, ptr %3, align 8, !tbaa !12
  %76 = icmp ult i64 %75, %74
  br i1 %76, label %77, label %80

77:                                               ; preds = %55
  %78 = load ptr, ptr @stderr, align 8, !tbaa !5
  %79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.18, i64 noundef %75, i32 noundef %73) #17
  br label %252

80:                                               ; preds = %55
  %81 = sext i32 %31 to i64
  %82 = shl nsw i64 %81, 3
  %83 = call ptr @calloc(i64 1, i64 %82) #15
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  call void (ptr, ...) @die(ptr noundef nonnull @.str.21) #16
  unreachable

86:                                               ; preds = %80
  %87 = icmp sgt i32 %31, 0
  br i1 %87, label %88, label %140

88:                                               ; preds = %86
  %89 = zext i32 %31 to i64
  br label %90

90:                                               ; preds = %132, %88
  %91 = phi i64 [ 0, %88 ], [ %133, %132 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %92 = getelementptr inbounds ptr, ptr %30, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = call ptr @utilfdt_read(ptr noundef %93, ptr noundef nonnull %4) #15
  %95 = getelementptr inbounds ptr, ptr %83, i64 %91
  store ptr %94, ptr %95, align 8, !tbaa !5
  %96 = icmp eq ptr %94, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = and i64 %91, 4294967295
  %99 = getelementptr inbounds ptr, ptr %30, i64 %98
  %100 = load ptr, ptr @stderr, align 8, !tbaa !5
  %101 = load ptr, ptr %99, align 8, !tbaa !5
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.17, ptr noundef %101) #17
  br label %131

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.fdt_header, ptr %94, i64 0, i32 1
  %105 = load i8, ptr %104, align 1, !tbaa !11
  %106 = zext i8 %105 to i32
  %107 = shl nuw i32 %106, 24
  %108 = getelementptr inbounds i8, ptr %104, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !11
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 16
  %112 = or i32 %111, %107
  %113 = getelementptr inbounds i8, ptr %104, i64 2
  %114 = load i8, ptr %113, align 1, !tbaa !11
  %115 = zext i8 %114 to i32
  %116 = shl nuw nsw i32 %115, 8
  %117 = or i32 %112, %116
  %118 = getelementptr inbounds i8, ptr %104, i64 3
  %119 = load i8, ptr %118, align 1, !tbaa !11
  %120 = zext i8 %119 to i32
  %121 = or i32 %117, %120
  %122 = zext i32 %121 to i64
  %123 = load i64, ptr %4, align 8, !tbaa !12
  %124 = icmp ult i64 %123, %122
  br i1 %124, label %125, label %132

125:                                              ; preds = %103
  %126 = and i64 %91, 4294967295
  %127 = getelementptr inbounds ptr, ptr %30, i64 %126
  %128 = load ptr, ptr @stderr, align 8, !tbaa !5
  %129 = load ptr, ptr %127, align 8, !tbaa !5
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef nonnull @.str.19, ptr noundef %129, i64 noundef %123, i32 noundef %121) #17
  br label %131

131:                                              ; preds = %125, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %238

132:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %133 = add nuw nsw i64 %91, 1
  %134 = icmp eq i64 %133, %89
  br i1 %134, label %135, label %90

135:                                              ; preds = %132
  %136 = load i8, ptr %56, align 1, !tbaa !11
  %137 = load i8, ptr %60, align 1, !tbaa !11
  %138 = load i8, ptr %65, align 1, !tbaa !11
  %139 = load i8, ptr %70, align 1, !tbaa !11
  br label %140

140:                                              ; preds = %135, %86
  %141 = phi i8 [ %139, %135 ], [ %71, %86 ]
  %142 = phi i8 [ %138, %135 ], [ %66, %86 ]
  %143 = phi i8 [ %137, %135 ], [ %61, %86 ]
  %144 = phi i8 [ %136, %135 ], [ %57, %86 ]
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 24
  %147 = zext i8 %143 to i64
  %148 = shl nuw nsw i64 %147, 16
  %149 = or i64 %146, %148
  %150 = zext i8 %142 to i64
  %151 = shl nuw nsw i64 %150, 8
  %152 = or i64 %149, %151
  %153 = zext i8 %141 to i64
  %154 = or i64 %152, %153
  store i64 %154, ptr %3, align 8, !tbaa !12
  br i1 %87, label %155, label %230

155:                                              ; preds = %140
  %156 = zext i32 %31 to i64
  br label %157

157:                                              ; preds = %227, %155
  %158 = phi i64 [ 0, %155 ], [ %228, %227 ]
  %159 = phi ptr [ %50, %155 ], [ %192, %227 ]
  %160 = getelementptr inbounds ptr, ptr %83, i64 %158
  %161 = load ptr, ptr %160, align 8, !tbaa !5
  %162 = getelementptr inbounds ptr, ptr %30, i64 %158
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  %164 = getelementptr inbounds %struct.fdt_header, ptr %161, i64 0, i32 1
  %165 = load i8, ptr %164, align 1, !tbaa !11
  %166 = zext i8 %165 to i64
  %167 = shl nuw nsw i64 %166, 24
  %168 = getelementptr inbounds i8, ptr %164, i64 1
  %169 = load i8, ptr %168, align 1, !tbaa !11
  %170 = zext i8 %169 to i64
  %171 = shl nuw nsw i64 %170, 16
  %172 = or i64 %171, %167
  %173 = getelementptr inbounds i8, ptr %164, i64 2
  %174 = load i8, ptr %173, align 1, !tbaa !11
  %175 = zext i8 %174 to i64
  %176 = shl nuw nsw i64 %175, 8
  %177 = or i64 %172, %176
  %178 = getelementptr inbounds i8, ptr %164, i64 3
  %179 = load i8, ptr %178, align 1, !tbaa !11
  %180 = zext i8 %179 to i64
  %181 = or i64 %177, %180
  %182 = call noalias ptr @malloc(i64 noundef %181) #18
  %183 = icmp eq ptr %182, null
  br i1 %183, label %188, label %184

184:                                              ; preds = %157
  %185 = load i64, ptr %3, align 8, !tbaa !12
  %186 = call ptr @malloc(i64 %185) #15
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %191

188:                                              ; preds = %157
  call void (ptr, ...) @die(ptr noundef nonnull @.str.21) #16
  unreachable

189:                                              ; preds = %217, %184
  %190 = phi i64 [ %219, %217 ], [ %185, %184 ]
  call void (ptr, ...) @die(ptr noundef nonnull @.str.25, i64 noundef %190) #16
  unreachable

191:                                              ; preds = %217, %184
  %192 = phi ptr [ %220, %217 ], [ %186, %184 ]
  %193 = phi i64 [ %219, %217 ], [ %185, %184 ]
  %194 = trunc i64 %193 to i32
  %195 = call i32 @fdt_open_into(ptr noundef %159, ptr noundef nonnull %192, i32 noundef %194) #15
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %191
  %198 = load ptr, ptr @stderr, align 8, !tbaa !5
  %199 = call ptr @fdt_strerror(i32 noundef %195) #15
  %200 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef nonnull @.str.23, ptr noundef %199) #17
  br label %226

201:                                              ; preds = %191
  %202 = load i8, ptr %164, align 1, !tbaa !11
  %203 = zext i8 %202 to i64
  %204 = shl nuw nsw i64 %203, 24
  %205 = load i8, ptr %168, align 1, !tbaa !11
  %206 = zext i8 %205 to i64
  %207 = shl nuw nsw i64 %206, 16
  %208 = or i64 %207, %204
  %209 = load i8, ptr %173, align 1, !tbaa !11
  %210 = zext i8 %209 to i64
  %211 = shl nuw nsw i64 %210, 8
  %212 = or i64 %208, %211
  %213 = load i8, ptr %178, align 1, !tbaa !11
  %214 = zext i8 %213 to i64
  %215 = or i64 %212, %214
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %182, ptr nonnull align 1 %161, i64 %215, i1 false) #15
  %216 = call i32 @fdt_overlay_apply(ptr noundef nonnull %192, ptr noundef nonnull %182) #15
  switch i32 %216, label %222 [
    i32 -3, label %217
    i32 0, label %227
  ]

217:                                              ; preds = %201
  %218 = load i64, ptr %3, align 8, !tbaa !12
  %219 = add i64 %218, 65536
  store i64 %219, ptr %3, align 8, !tbaa !12
  %220 = call ptr @realloc(ptr noundef nonnull %192, i64 noundef %219) #19
  %221 = icmp eq ptr %220, null
  br i1 %221, label %189, label %191

222:                                              ; preds = %201
  %223 = load ptr, ptr @stderr, align 8, !tbaa !5
  %224 = call ptr @fdt_strerror(i32 noundef %216) #15
  %225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef nonnull @.str.24, ptr noundef %163, ptr noundef %224) #17
  br label %226

226:                                              ; preds = %222, %197
  call void @free(ptr noundef %182) #15
  call void @free(ptr noundef nonnull %192) #15
  br label %238

227:                                              ; preds = %201
  call void @free(ptr noundef %159) #15
  call void @free(ptr noundef %182) #15
  %228 = add nuw nsw i64 %158, 1
  %229 = icmp eq i64 %228, %156
  br i1 %229, label %230, label %157

230:                                              ; preds = %227, %140
  %231 = phi ptr [ %50, %140 ], [ %192, %227 ]
  %232 = call i32 @fdt_pack(ptr noundef nonnull %231) #15
  %233 = call i32 @utilfdt_write(ptr noundef nonnull %9, ptr noundef nonnull %231) #15
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %230
  %236 = load ptr, ptr @stderr, align 8, !tbaa !5
  %237 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef nonnull @.str.20, ptr noundef nonnull %9) #17
  br label %238

238:                                              ; preds = %235, %230, %226, %131
  %239 = phi ptr [ %231, %235 ], [ %231, %230 ], [ %50, %131 ], [ null, %226 ]
  %240 = phi i32 [ 1, %235 ], [ 0, %230 ], [ 1, %131 ], [ 1, %226 ]
  br i1 %87, label %241, label %253

241:                                              ; preds = %238
  %242 = zext i32 %31 to i64
  br label %243

243:                                              ; preds = %249, %241
  %244 = phi i64 [ 0, %241 ], [ %250, %249 ]
  %245 = getelementptr inbounds ptr, ptr %83, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !5
  %247 = icmp eq ptr %246, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %243
  call void @free(ptr noundef nonnull %246) #15
  br label %249

249:                                              ; preds = %248, %243
  %250 = add nuw nsw i64 %244, 1
  %251 = icmp eq i64 %250, %242
  br i1 %251, label %253, label %243

252:                                              ; preds = %77, %52
  call void @free(ptr noundef %50) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %254

253:                                              ; preds = %249, %238
  call void @free(ptr noundef %83) #15
  call void @free(ptr noundef %239) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %254

254:                                              ; preds = %253, %252
  %255 = phi i32 [ 1, %252 ], [ %240, %253 ]
  ret i32 %255
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @util_usage(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @util_version() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @utilfdt_read(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare i32 @fdt_pack(ptr noundef) local_unnamed_addr #5

declare i32 @utilfdt_write(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %0, ...) unnamed_addr #8 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr %3) #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef %0, ptr noundef nonnull %2) #20
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare i32 @fdt_open_into(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @fdt_strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare i32 @fdt_overlay_apply(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
