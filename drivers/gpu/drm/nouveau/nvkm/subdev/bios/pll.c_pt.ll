; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pll_mapping = type { i8, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.127, %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.120 }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }
%struct.bit_entry = type { i8, i8, i16, i16 }

@.str = private unnamed_addr constant [39 x i8] c"%s: unknown pll limits version 0x%02x\0A\00", align 1
@nv04_pll_mapping = internal constant [5 x %struct.pll_mapping] [%struct.pll_mapping { i8 1, i32 6817024 }, %struct.pll_mapping { i8 4, i32 6817028 }, %struct.pll_mapping { i8 -128, i32 6817032 }, %struct.pll_mapping { i8 -127, i32 6817056 }, %struct.pll_mapping zeroinitializer], align 4
@nv40_pll_mapping = internal constant [5 x %struct.pll_mapping] [%struct.pll_mapping { i8 1, i32 16384 }, %struct.pll_mapping { i8 4, i32 16416 }, %struct.pll_mapping { i8 -128, i32 6817032 }, %struct.pll_mapping { i8 -127, i32 6817056 }, %struct.pll_mapping zeroinitializer], align 4
@nv50_pll_mapping = internal constant [10 x %struct.pll_mapping] [%struct.pll_mapping { i8 1, i32 16424 }, %struct.pll_mapping { i8 2, i32 16416 }, %struct.pll_mapping { i8 3, i32 16384 }, %struct.pll_mapping { i8 4, i32 16392 }, %struct.pll_mapping { i8 64, i32 59408 }, %struct.pll_mapping { i8 65, i32 59416 }, %struct.pll_mapping { i8 66, i32 59428 }, %struct.pll_mapping { i8 -128, i32 6373632 }, %struct.pll_mapping { i8 -127, i32 6375680 }, %struct.pll_mapping zeroinitializer], align 4
@g84_pll_mapping = internal constant [8 x %struct.pll_mapping] [%struct.pll_mapping { i8 1, i32 16424 }, %struct.pll_mapping { i8 2, i32 16416 }, %struct.pll_mapping { i8 4, i32 16392 }, %struct.pll_mapping { i8 5, i32 16432 }, %struct.pll_mapping { i8 65, i32 59416 }, %struct.pll_mapping { i8 -128, i32 6373632 }, %struct.pll_mapping { i8 -127, i32 6375680 }, %struct.pll_mapping zeroinitializer], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_pll_parse(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #5
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #5
  store i8 0, ptr %9, align 1, !annotation !8
  %12 = icmp ugt i32 %1, 255
  br i1 %12, label %13, label %100

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  %14 = call fastcc i32 @pll_limits_table(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %9) #5
  %15 = icmp ne i32 %14, 0
  %16 = load i8, ptr %8, align 1
  %17 = icmp ugt i8 %16, 47
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load i8, ptr %7, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %97, label %22

22:                                               ; preds = %19
  %23 = load i8, ptr %6, align 1
  %24 = zext i8 %23 to i32
  %25 = add i32 %14, %24
  %26 = load i8, ptr %9, align 1
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %37, %22
  %29 = phi i8 [ %38, %37 ], [ %20, %22 ]
  %30 = phi i32 [ %39, %37 ], [ %25, %22 ]
  %31 = add i32 %30, 3
  %32 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %31) #5
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %30) #5
  %36 = zext i8 %35 to i32
  br label %97

37:                                               ; preds = %28
  %38 = add i8 %29, -1
  %39 = add i32 %30, %27
  %40 = icmp eq i8 %38, 0
  br i1 %40, label %97, label %28

41:                                               ; preds = %13
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 15
  %44 = load i32, ptr %43, align 8
  switch i32 %44, label %97 [
    i32 4, label %57
    i32 16, label %57
    i32 17, label %57
    i32 32, label %57
    i32 48, label %57
    i32 64, label %45
    i32 80, label %46
  ]

45:                                               ; preds = %41
  br label %57

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 16
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 80
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = freeze i32 %48
  %52 = icmp ult i32 %51, 163
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = add i32 %51, -170
  %55 = and i32 %54, -3
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %97

57:                                               ; preds = %53, %50, %46, %45, %41, %41, %41, %41, %41
  %58 = phi ptr [ @g84_pll_mapping, %53 ], [ @nv40_pll_mapping, %45 ], [ @nv04_pll_mapping, %41 ], [ @nv04_pll_mapping, %41 ], [ @nv04_pll_mapping, %41 ], [ @nv04_pll_mapping, %41 ], [ @nv04_pll_mapping, %41 ], [ @nv50_pll_mapping, %46 ], [ @g84_pll_mapping, %50 ]
  br label %59

59:                                               ; preds = %94, %57
  %60 = phi ptr [ %95, %94 ], [ %58, %57 ]
  %61 = getelementptr inbounds %struct.pll_mapping, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %97, label %64

64:                                               ; preds = %59
  %65 = icmp eq i32 %62, %1
  br i1 %65, label %66, label %94

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.pll_mapping, ptr %60, i32 0, i32 1
  %68 = icmp ugt i8 %16, 31
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = load i8, ptr %6, align 1
  %71 = zext i8 %70 to i32
  %72 = add i32 %14, %71
  %73 = load i8, ptr %60, align 4
  %74 = zext i8 %73 to i32
  %75 = load i8, ptr %7, align 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %69
  %78 = load i8, ptr %9, align 1
  %79 = zext i8 %78 to i32
  br label %80

80:                                               ; preds = %86, %77
  %81 = phi i8 [ %87, %86 ], [ %75, %77 ]
  %82 = phi i32 [ %88, %86 ], [ %72, %77 ]
  %83 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %82) #5
  %84 = load i32, ptr %67, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %97, label %86

86:                                               ; preds = %80
  %87 = add i8 %81, -1
  %88 = add i32 %82, %79
  %89 = icmp eq i8 %87, 0
  br i1 %89, label %97, label %80

90:                                               ; preds = %66
  %91 = load i8, ptr %60, align 4
  %92 = zext i8 %91 to i32
  %93 = add i32 %14, 1
  br label %97

94:                                               ; preds = %64
  %95 = getelementptr %struct.pll_mapping, ptr %60, i32 1
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %59

97:                                               ; preds = %94, %90, %86, %80, %69, %59, %53, %41, %37, %34, %19
  %98 = phi i32 [ %1, %41 ], [ %74, %69 ], [ %92, %90 ], [ %1, %53 ], [ %1, %19 ], [ %36, %34 ], [ %1, %37 ], [ %74, %86 ], [ %74, %80 ], [ %1, %94 ], [ %1, %59 ]
  %99 = phi i32 [ 0, %41 ], [ %72, %69 ], [ %93, %90 ], [ 0, %53 ], [ 0, %19 ], [ %30, %34 ], [ 0, %37 ], [ %82, %80 ], [ %72, %86 ], [ 0, %94 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  br label %188

100:                                              ; preds = %3
  %101 = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1, !annotation !8
  %102 = call fastcc i32 @pll_limits_table(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %9) #5
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %130, label %104

104:                                              ; preds = %100
  %105 = load i8, ptr %8, align 1
  %106 = icmp ugt i8 %105, 47
  br i1 %106, label %107, label %130

107:                                              ; preds = %104
  %108 = load i8, ptr %5, align 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %184, label %110

110:                                              ; preds = %107
  %111 = load i8, ptr %4, align 1
  %112 = zext i8 %111 to i32
  %113 = add i32 %102, %112
  %114 = load i8, ptr %9, align 1
  %115 = zext i8 %114 to i32
  br label %116

116:                                              ; preds = %126, %110
  %117 = phi i8 [ %127, %126 ], [ %108, %110 ]
  %118 = phi i32 [ %128, %126 ], [ %113, %110 ]
  %119 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %118) #5
  %120 = icmp eq i8 %119, %101
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = icmp ult i8 %105, 80
  br i1 %122, label %123, label %184

123:                                              ; preds = %121
  %124 = add i32 %118, 3
  %125 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %124) #5
  br label %184

126:                                              ; preds = %116
  %127 = add i8 %117, -1
  %128 = add i32 %118, %115
  %129 = icmp eq i8 %127, 0
  br i1 %129, label %184, label %116

130:                                              ; preds = %104, %100
  %131 = load ptr, ptr %10, align 4
  %132 = getelementptr inbounds %struct.nvkm_device, ptr %131, i32 0, i32 15
  %133 = load i32, ptr %132, align 8
  switch i32 %133, label %184 [
    i32 4, label %146
    i32 16, label %146
    i32 17, label %146
    i32 32, label %146
    i32 48, label %146
    i32 64, label %134
    i32 80, label %135
  ]

134:                                              ; preds = %130
  br label %146

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.nvkm_device, ptr %131, i32 0, i32 16
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 80
  br i1 %138, label %146, label %139

139:                                              ; preds = %135
  %140 = freeze i32 %137
  %141 = icmp ult i32 %140, 163
  br i1 %141, label %146, label %142

142:                                              ; preds = %139
  %143 = add i32 %140, -170
  %144 = and i32 %143, -3
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %184

146:                                              ; preds = %142, %139, %135, %134, %130, %130, %130, %130, %130
  %147 = phi ptr [ @g84_pll_mapping, %142 ], [ @nv40_pll_mapping, %134 ], [ @nv04_pll_mapping, %130 ], [ @nv04_pll_mapping, %130 ], [ @nv04_pll_mapping, %130 ], [ @nv04_pll_mapping, %130 ], [ @nv04_pll_mapping, %130 ], [ @nv50_pll_mapping, %135 ], [ @g84_pll_mapping, %139 ]
  br label %148

148:                                              ; preds = %181, %146
  %149 = phi ptr [ %182, %181 ], [ %147, %146 ]
  %150 = getelementptr inbounds %struct.pll_mapping, ptr %149, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %184, label %153

153:                                              ; preds = %148
  %154 = load i8, ptr %149, align 4
  %155 = icmp eq i8 %154, %101
  br i1 %155, label %156, label %181

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.pll_mapping, ptr %149, i32 0, i32 1
  %158 = load i8, ptr %8, align 1
  %159 = icmp ugt i8 %158, 31
  br i1 %159, label %160, label %179

160:                                              ; preds = %156
  %161 = load i8, ptr %4, align 1
  %162 = zext i8 %161 to i32
  %163 = add i32 %102, %162
  %164 = load i8, ptr %5, align 1
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %184, label %166

166:                                              ; preds = %160
  %167 = load i8, ptr %9, align 1
  %168 = zext i8 %167 to i32
  br label %169

169:                                              ; preds = %175, %166
  %170 = phi i8 [ %176, %175 ], [ %164, %166 ]
  %171 = phi i32 [ %177, %175 ], [ %163, %166 ]
  %172 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %171) #5
  %173 = load i32, ptr %157, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %184, label %175

175:                                              ; preds = %169
  %176 = add i8 %170, -1
  %177 = add i32 %171, %168
  %178 = icmp eq i8 %176, 0
  br i1 %178, label %184, label %169

179:                                              ; preds = %156
  %180 = add i32 %102, 1
  br label %184

181:                                              ; preds = %153
  %182 = getelementptr %struct.pll_mapping, ptr %149, i32 1
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %148

184:                                              ; preds = %181, %179, %175, %169, %160, %148, %142, %130, %126, %123, %121, %107
  %185 = phi i32 [ %1, %130 ], [ %151, %160 ], [ %151, %179 ], [ %1, %142 ], [ %1, %107 ], [ %125, %123 ], [ 0, %121 ], [ %151, %175 ], [ %151, %169 ], [ %1, %181 ], [ %1, %148 ], [ %1, %126 ]
  %186 = phi i32 [ 0, %130 ], [ %163, %160 ], [ %180, %179 ], [ 0, %142 ], [ 0, %107 ], [ %118, %123 ], [ %118, %121 ], [ %171, %169 ], [ %163, %175 ], [ 0, %181 ], [ 0, %148 ], [ 0, %126 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  %187 = load i8, ptr %8, align 1
  br label %188

188:                                              ; preds = %184, %97
  %189 = phi i8 [ %16, %97 ], [ %187, %184 ]
  %190 = phi i32 [ %98, %97 ], [ %1, %184 ]
  %191 = phi i32 [ %1, %97 ], [ %185, %184 ]
  %192 = phi i32 [ %99, %97 ], [ %186, %184 ]
  %193 = icmp eq i8 %189, 0
  %194 = icmp ne i32 %192, 0
  %195 = select i1 %193, i1 true, i1 %194
  br i1 %195, label %196, label %581

196:                                              ; preds = %188
  %197 = getelementptr inbounds i8, ptr %2, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %197, i8 0, i32 48, i1 false)
  store i32 %190, ptr %2, align 4
  %198 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 1
  store i32 %191, ptr %198, align 4
  %199 = zext i8 %189 to i32
  switch i8 %189, label %488 [
    i8 0, label %497
    i8 16, label %200
    i8 17, label %200
    i8 32, label %239
    i8 33, label %239
    i8 48, label %321
    i8 64, label %398
    i8 80, label %444
  ]

200:                                              ; preds = %196, %196
  %201 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %192) #5
  %202 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7
  store i32 %201, ptr %202, align 4
  %203 = add i32 %192, 4
  %204 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %203) #5
  %205 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 1
  store i32 %204, ptr %205, align 4
  %206 = add i32 %192, 8
  %207 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %206) #5
  %208 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8
  store i32 %207, ptr %208, align 4
  %209 = add i32 %192, 12
  %210 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %209) #5
  %211 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 1
  store i32 %210, ptr %211, align 4
  %212 = add i32 %192, 16
  %213 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %212) #5
  %214 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 2
  store i32 %213, ptr %214, align 4
  %215 = add i32 %192, 20
  %216 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %215) #5
  %217 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 2
  store i32 %216, ptr %217, align 4
  %218 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 3
  store i32 2147483647, ptr %218, align 4
  %219 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 3
  store i32 2147483647, ptr %219, align 4
  %220 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 4
  store i8 7, ptr %220, align 1
  %221 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 6
  store i8 6, ptr %221, align 1
  %222 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 7, i32 1
  %223 = load i8, ptr %222, align 1
  %224 = icmp eq i8 %223, 54
  %225 = select i1 %224, i8 5, i8 1
  %226 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 6
  store i8 %225, ptr %226, align 2
  %227 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 7
  store i8 -1, ptr %227, align 1
  %228 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 4
  store i8 1, ptr %228, align 4
  %229 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 5
  store i8 13, ptr %229, align 1
  %230 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 6
  store i8 4, ptr %230, align 2
  %231 = load i8, ptr %222, align 1
  %232 = icmp eq i8 %231, 48
  %233 = icmp eq i8 %231, 53
  %234 = or i1 %232, %233
  %235 = select i1 %234, i8 31, i8 40
  %236 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 7
  store i8 %235, ptr %236, align 1
  %237 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 4
  store i8 1, ptr %237, align 4
  %238 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 5
  store i8 4, ptr %238, align 1
  br label %497

239:                                              ; preds = %196, %196
  %240 = add i32 %192, 4
  %241 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %240) #5
  %242 = zext i16 %241 to i32
  %243 = mul nuw nsw i32 %242, 1000
  %244 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7
  store i32 %243, ptr %244, align 4
  %245 = add i32 %192, 6
  %246 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %245) #5
  %247 = zext i16 %246 to i32
  %248 = mul nuw nsw i32 %247, 1000
  %249 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 1
  store i32 %248, ptr %249, align 4
  %250 = add i32 %192, 8
  %251 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %250) #5
  %252 = zext i16 %251 to i32
  %253 = mul nuw nsw i32 %252, 1000
  %254 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8
  store i32 %253, ptr %254, align 4
  %255 = add i32 %192, 10
  %256 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %255) #5
  %257 = zext i16 %256 to i32
  %258 = mul nuw nsw i32 %257, 1000
  %259 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 1
  store i32 %258, ptr %259, align 4
  %260 = add i32 %192, 12
  %261 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %260) #5
  %262 = zext i16 %261 to i32
  %263 = mul nuw nsw i32 %262, 1000
  %264 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 2
  store i32 %263, ptr %264, align 4
  %265 = add i32 %192, 14
  %266 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %265) #5
  %267 = zext i16 %266 to i32
  %268 = mul nuw nsw i32 %267, 1000
  %269 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 2
  store i32 %268, ptr %269, align 4
  %270 = add i32 %192, 16
  %271 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %270) #5
  %272 = zext i16 %271 to i32
  %273 = mul nuw nsw i32 %272, 1000
  %274 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 3
  store i32 %273, ptr %274, align 4
  %275 = add i32 %192, 18
  %276 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %275) #5
  %277 = zext i16 %276 to i32
  %278 = mul nuw nsw i32 %277, 1000
  %279 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 3
  store i32 %278, ptr %279, align 4
  %280 = add i32 %192, 20
  %281 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %280) #5
  %282 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 6
  store i8 %281, ptr %282, align 2
  %283 = add i32 %192, 21
  %284 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %283) #5
  %285 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 7
  store i8 %284, ptr %285, align 1
  %286 = add i32 %192, 22
  %287 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %286) #5
  %288 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 4
  store i8 %287, ptr %288, align 4
  %289 = add i32 %192, 23
  %290 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %289) #5
  %291 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 5
  store i8 %290, ptr %291, align 1
  %292 = add i32 %192, 24
  %293 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %292) #5
  %294 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 6
  store i8 %293, ptr %294, align 2
  %295 = add i32 %192, 25
  %296 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %295) #5
  %297 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 7
  store i8 %296, ptr %297, align 1
  %298 = add i32 %192, 26
  %299 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %298) #5
  %300 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 4
  store i8 %299, ptr %300, align 4
  %301 = add i32 %192, 27
  %302 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %301) #5
  %303 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 5
  store i8 %302, ptr %303, align 1
  %304 = add i32 %192, 29
  %305 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %304) #5
  %306 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 4
  store i8 %305, ptr %306, align 1
  %307 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 6
  store i8 %305, ptr %307, align 1
  %308 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 7, i32 1
  %309 = load i8, ptr %308, align 1
  %310 = icmp ult i8 %309, 96
  %311 = select i1 %310, i8 6, i8 %305
  store i8 %311, ptr %307, align 1
  %312 = add i32 %192, 30
  %313 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %312) #5
  %314 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 5
  store i8 %313, ptr %314, align 2
  %315 = load i8, ptr %9, align 1
  %316 = icmp ugt i8 %315, 34
  br i1 %316, label %317, label %497

317:                                              ; preds = %239
  %318 = add i32 %192, 31
  %319 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %318) #5
  %320 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 2
  store i32 %319, ptr %320, align 4
  br label %497

321:                                              ; preds = %196
  %322 = add i32 %192, 1
  %323 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %322) #5
  %324 = zext i16 %323 to i32
  %325 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %324) #5
  %326 = zext i16 %325 to i32
  %327 = mul nuw nsw i32 %326, 1000
  %328 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7
  store i32 %327, ptr %328, align 4
  %329 = add nuw nsw i32 %324, 2
  %330 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %329) #5
  %331 = zext i16 %330 to i32
  %332 = mul nuw nsw i32 %331, 1000
  %333 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 1
  store i32 %332, ptr %333, align 4
  %334 = add nuw nsw i32 %324, 4
  %335 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %334) #5
  %336 = zext i16 %335 to i32
  %337 = mul nuw nsw i32 %336, 1000
  %338 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8
  store i32 %337, ptr %338, align 4
  %339 = add nuw nsw i32 %324, 6
  %340 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %339) #5
  %341 = zext i16 %340 to i32
  %342 = mul nuw nsw i32 %341, 1000
  %343 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 1
  store i32 %342, ptr %343, align 4
  %344 = add nuw nsw i32 %324, 8
  %345 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %344) #5
  %346 = zext i16 %345 to i32
  %347 = mul nuw nsw i32 %346, 1000
  %348 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 2
  store i32 %347, ptr %348, align 4
  %349 = add nuw nsw i32 %324, 10
  %350 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %349) #5
  %351 = zext i16 %350 to i32
  %352 = mul nuw nsw i32 %351, 1000
  %353 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 2
  store i32 %352, ptr %353, align 4
  %354 = add nuw nsw i32 %324, 12
  %355 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %354) #5
  %356 = zext i16 %355 to i32
  %357 = mul nuw nsw i32 %356, 1000
  %358 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 3
  store i32 %357, ptr %358, align 4
  %359 = add nuw nsw i32 %324, 14
  %360 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %359) #5
  %361 = zext i16 %360 to i32
  %362 = mul nuw nsw i32 %361, 1000
  %363 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 3
  store i32 %362, ptr %363, align 4
  %364 = add nuw nsw i32 %324, 16
  %365 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %364) #5
  %366 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 6
  store i8 %365, ptr %366, align 2
  %367 = add nuw nsw i32 %324, 17
  %368 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %367) #5
  %369 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 7
  store i8 %368, ptr %369, align 1
  %370 = add nuw nsw i32 %324, 18
  %371 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %370) #5
  %372 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 4
  store i8 %371, ptr %372, align 4
  %373 = add nuw nsw i32 %324, 19
  %374 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %373) #5
  %375 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 5
  store i8 %374, ptr %375, align 1
  %376 = add nuw nsw i32 %324, 20
  %377 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %376) #5
  %378 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 6
  store i8 %377, ptr %378, align 2
  %379 = add nuw nsw i32 %324, 21
  %380 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %379) #5
  %381 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 7
  store i8 %380, ptr %381, align 1
  %382 = add nuw nsw i32 %324, 22
  %383 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %382) #5
  %384 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 4
  store i8 %383, ptr %384, align 4
  %385 = add nuw nsw i32 %324, 23
  %386 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %385) #5
  %387 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 8, i32 5
  store i8 %386, ptr %387, align 1
  %388 = add nuw nsw i32 %324, 25
  %389 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %388) #5
  %390 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 4
  store i8 %389, ptr %390, align 1
  %391 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 6
  store i8 %389, ptr %391, align 1
  %392 = add nuw nsw i32 %324, 27
  %393 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %392) #5
  %394 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 5
  store i8 %393, ptr %394, align 2
  %395 = add nuw nsw i32 %324, 28
  %396 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %395) #5
  %397 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 2
  store i32 %396, ptr %397, align 4
  br label %497

398:                                              ; preds = %196
  %399 = add i32 %192, 9
  %400 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %399) #5
  %401 = zext i16 %400 to i32
  %402 = mul nuw nsw i32 %401, 1000
  %403 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 2
  store i32 %402, ptr %403, align 4
  %404 = add i32 %192, 1
  %405 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %404) #5
  %406 = zext i16 %405 to i32
  %407 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %406) #5
  %408 = zext i16 %407 to i32
  %409 = mul nuw nsw i32 %408, 1000
  %410 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7
  store i32 %409, ptr %410, align 4
  %411 = add nuw nsw i32 %406, 2
  %412 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %411) #5
  %413 = zext i16 %412 to i32
  %414 = mul nuw nsw i32 %413, 1000
  %415 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 1
  store i32 %414, ptr %415, align 4
  %416 = add nuw nsw i32 %406, 4
  %417 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %416) #5
  %418 = zext i16 %417 to i32
  %419 = mul nuw nsw i32 %418, 1000
  %420 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 2
  store i32 %419, ptr %420, align 4
  %421 = add nuw nsw i32 %406, 6
  %422 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %421) #5
  %423 = zext i16 %422 to i32
  %424 = mul nuw nsw i32 %423, 1000
  %425 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 3
  store i32 %424, ptr %425, align 4
  %426 = add nuw nsw i32 %406, 8
  %427 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %426) #5
  %428 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 4
  store i8 %427, ptr %428, align 4
  %429 = add nuw nsw i32 %406, 9
  %430 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %429) #5
  %431 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 5
  store i8 %430, ptr %431, align 1
  %432 = add nuw nsw i32 %406, 10
  %433 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %432) #5
  %434 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 6
  store i8 %433, ptr %434, align 2
  %435 = add nuw nsw i32 %406, 11
  %436 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %435) #5
  %437 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 7
  store i8 %436, ptr %437, align 1
  %438 = add nuw nsw i32 %406, 12
  %439 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %438) #5
  %440 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 3
  store i8 %439, ptr %440, align 4
  %441 = add nuw nsw i32 %406, 13
  %442 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %441) #5
  %443 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 4
  store i8 %442, ptr %443, align 1
  br label %497

444:                                              ; preds = %196
  %445 = add i32 %192, 1
  %446 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %445) #5
  %447 = zext i16 %446 to i32
  %448 = mul nuw nsw i32 %447, 1000
  %449 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 2
  store i32 %448, ptr %449, align 4
  %450 = add i32 %192, 5
  %451 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %450) #5
  %452 = zext i16 %451 to i32
  %453 = mul nuw nsw i32 %452, 1000
  %454 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7
  store i32 %453, ptr %454, align 4
  %455 = add i32 %192, 7
  %456 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %455) #5
  %457 = zext i16 %456 to i32
  %458 = mul nuw nsw i32 %457, 1000
  %459 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 1
  store i32 %458, ptr %459, align 4
  %460 = add i32 %192, 9
  %461 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %460) #5
  %462 = zext i16 %461 to i32
  %463 = mul nuw nsw i32 %462, 1000
  %464 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 2
  store i32 %463, ptr %464, align 4
  %465 = add i32 %192, 11
  %466 = tail call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %465) #5
  %467 = zext i16 %466 to i32
  %468 = mul nuw nsw i32 %467, 1000
  %469 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 3
  store i32 %468, ptr %469, align 4
  %470 = add i32 %192, 13
  %471 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %470) #5
  %472 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 4
  store i8 %471, ptr %472, align 4
  %473 = add i32 %192, 14
  %474 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %473) #5
  %475 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 5
  store i8 %474, ptr %475, align 1
  %476 = add i32 %192, 15
  %477 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %476) #5
  %478 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 6
  store i8 %477, ptr %478, align 2
  %479 = add i32 %192, 16
  %480 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %479) #5
  %481 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 7
  store i8 %480, ptr %481, align 1
  %482 = add i32 %192, 17
  %483 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %482) #5
  %484 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 3
  store i8 %483, ptr %484, align 4
  %485 = add i32 %192, 18
  %486 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %485) #5
  %487 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 4
  store i8 %486, ptr %487, align 1
  br label %497

488:                                              ; preds = %196
  %489 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %490 = load i32, ptr %489, align 4
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %581, label %492

492:                                              ; preds = %488
  %493 = load ptr, ptr %10, align 4
  %494 = getelementptr inbounds %struct.nvkm_device, ptr %493, i32 0, i32 2
  %495 = load ptr, ptr %494, align 8
  %496 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %495, ptr noundef nonnull @.str, ptr noundef %496, i32 noundef %199) #6
  br label %581

497:                                              ; preds = %444, %398, %321, %317, %239, %200, %196
  %498 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 2
  %499 = load i32, ptr %498, align 4
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %526

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 18
  %503 = load i32, ptr %502, align 4
  store i32 %503, ptr %498, align 4
  %504 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 7, i32 1
  %505 = load i8, ptr %504, align 1
  %506 = icmp eq i8 %505, 81
  br i1 %506, label %507, label %526

507:                                              ; preds = %501
  %508 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  %509 = load ptr, ptr %508, align 4
  %510 = getelementptr i8, ptr %509, i32 6817060
  %511 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %510) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %512 = load i32, ptr %198, align 4
  %513 = icmp ne i32 %512, 6817032
  %514 = and i32 %511, 32
  %515 = icmp eq i32 %514, 0
  %516 = select i1 %513, i1 true, i1 %515
  br i1 %516, label %517, label %522

517:                                              ; preds = %507
  %518 = icmp ne i32 %512, 6817056
  %519 = and i32 %511, 128
  %520 = icmp eq i32 %519, 0
  %521 = select i1 %518, i1 true, i1 %520
  br i1 %521, label %526, label %522

522:                                              ; preds = %517, %507
  %523 = tail call zeroext i8 @nvkm_rdvgac(ptr noundef %11, i32 noundef 0, i8 noundef zeroext 39) #5
  %524 = icmp ult i8 %523, -93
  %525 = select i1 %524, i32 200000, i32 25000
  store i32 %525, ptr %498, align 4
  br label %526

526:                                              ; preds = %522, %517, %501, %497
  %527 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7
  %528 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 1
  %529 = load i32, ptr %528, align 4
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %581

531:                                              ; preds = %526
  %532 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 5
  %533 = load i32, ptr %532, align 4
  %534 = add i32 %533, 67
  %535 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %534) #5
  store i32 %535, ptr %528, align 4
  %536 = load i32, ptr %532, align 4
  %537 = add i32 %536, 71
  %538 = tail call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %537) #5
  store i32 %538, ptr %527, align 4
  %539 = load i32, ptr %532, align 4
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %552, label %541

541:                                              ; preds = %531
  %542 = add i32 %539, 5
  %543 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %542) #5
  %544 = zext i8 %543 to i16
  %545 = shl nuw i16 %544, 8
  %546 = load i32, ptr %532, align 4
  %547 = add i32 %546, 6
  %548 = tail call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %547) #5
  %549 = zext i8 %548 to i16
  %550 = or i16 %545, %549
  %551 = icmp ult i16 %550, 1286
  br i1 %551, label %552, label %553

552:                                              ; preds = %541, %531
  store i32 256000, ptr %528, align 4
  store i32 128000, ptr %527, align 4
  br label %553

553:                                              ; preds = %552, %541
  %554 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 2
  store i32 0, ptr %554, align 4
  %555 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 3
  store i32 2147483647, ptr %555, align 4
  %556 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 6
  store i8 1, ptr %556, align 2
  %557 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 7
  store i8 -1, ptr %557, align 1
  %558 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 4
  store i8 1, ptr %558, align 4
  %559 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 18
  %560 = load i32, ptr %559, align 4
  %561 = icmp eq i32 %560, 13500
  %562 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 7, i32 1
  %563 = load i8, ptr %562, align 1
  %564 = icmp ult i8 %563, 17
  %565 = select i1 %561, i8 13, i8 14
  br i1 %564, label %566, label %568

566:                                              ; preds = %553
  %567 = select i1 %561, i8 7, i8 8
  store i8 %567, ptr %558, align 4
  br label %568

568:                                              ; preds = %566, %553
  %569 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 7, i32 5
  store i8 %565, ptr %569, align 1
  %570 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 7, i32 1
  %571 = load i8, ptr %570, align 1
  %572 = freeze i8 %571
  %573 = icmp ult i8 %572, 23
  %574 = icmp eq i8 %572, 32
  %575 = icmp eq i8 %572, 26
  %576 = or i1 %574, %575
  %577 = or i1 %573, %576
  %578 = select i1 %577, i8 4, i8 5
  %579 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 4
  store i8 %578, ptr %579, align 1
  %580 = getelementptr inbounds %struct.nvbios_pll, ptr %2, i32 0, i32 6
  store i8 %578, ptr %580, align 1
  br label %581

581:                                              ; preds = %568, %526, %492, %488, %188
  %582 = phi i32 [ -2, %188 ], [ -22, %492 ], [ -22, %488 ], [ 0, %568 ], [ 0, %526 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #5
  ret i32 %582
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvkm_rdvgac(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pll_limits_table(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca %struct.bit_entry, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %6, i8 0, i32 6, i1 false), !annotation !8
  %7 = call i32 @bit_entry(ptr noundef %0, i8 noundef zeroext 67, ptr noundef nonnull %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 1
  %13 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 2
  %14 = load i16, ptr %13, align 2
  %15 = icmp ugt i16 %14, 9
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = add nuw nsw i32 %20, 8
  %22 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %21) #5
  %23 = zext i16 %22 to i32
  %24 = load i8, ptr %10, align 1
  %25 = load i16, ptr %13, align 2
  br label %26

26:                                               ; preds = %17, %9
  %27 = phi i16 [ %25, %17 ], [ %14, %9 ]
  %28 = phi i8 [ %24, %17 ], [ %11, %9 ]
  %29 = phi i32 [ %23, %17 ], [ 0, %9 ]
  %30 = icmp eq i8 %28, 2
  %31 = icmp ugt i16 %27, 3
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.bit_entry, ptr %6, i32 0, i32 3
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = call i32 @nvbios_rd32(ptr noundef %0, i32 noundef %36) #5
  br label %38

38:                                               ; preds = %33, %26
  %39 = phi i32 [ %37, %33 ], [ %29, %26 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %39) #5
  store i8 %42, ptr %1, align 1
  %43 = add i32 %39, 1
  %44 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %43) #5
  store i8 %44, ptr %2, align 1
  %45 = add i32 %39, 2
  %46 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %45) #5
  store i8 %46, ptr %4, align 1
  %47 = add i32 %39, 3
  %48 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %47) #5
  store i8 %48, ptr %3, align 1
  br label %73

49:                                               ; preds = %38, %5
  %50 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %49
  %54 = add i32 %51, 5
  %55 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %54) #5
  %56 = zext i8 %55 to i16
  %57 = shl nuw i16 %56, 8
  %58 = load i32, ptr %50, align 4
  %59 = add i32 %58, 6
  %60 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %59) #5
  %61 = zext i8 %60 to i16
  %62 = or i16 %57, %61
  %63 = icmp ugt i16 %62, 1315
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load i32, ptr %50, align 4
  %66 = add i32 %65, 142
  %67 = call zeroext i16 @nvbios_rd16(ptr noundef %0, i32 noundef %66) #5
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = zext i16 %67 to i32
  %71 = call zeroext i8 @nvbios_rd08(ptr noundef %0, i32 noundef %70) #5
  store i8 %71, ptr %1, align 1
  store i8 1, ptr %2, align 1
  store i8 1, ptr %3, align 1
  store i8 24, ptr %4, align 1
  br label %73

72:                                               ; preds = %64, %53, %49
  store i8 0, ptr %1, align 1
  br label %73

73:                                               ; preds = %72, %69, %41
  %74 = phi i32 [ %70, %69 ], [ 0, %72 ], [ %39, %41 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #5
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_entry(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i64 3948672}
!10 = !{i64 2151488125}
