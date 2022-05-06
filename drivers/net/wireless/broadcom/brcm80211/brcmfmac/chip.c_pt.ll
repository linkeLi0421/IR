; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.brcmf_chip_priv = type { %struct.brcmf_chip, ptr, ptr, %struct.list_head, i16, ptr, ptr, ptr }
%struct.brcmf_chip = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_buscore_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.brcmf_core = type { i16, i16, i32 }
%struct.brcmf_core_priv = type { %struct.brcmf_core, i32, %struct.list_head, ptr }

@.str = private unnamed_addr constant [9 x i8] c"BCM%d/%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BCM%x/%u\00", align 1
@__func__.brcmf_chip_get_raminfo = private unnamed_addr constant [23 x i8] c"brcmf_chip_get_raminfo\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"RAM base not provided with ARM CR4 core\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"RAM base not provided with ARM CA7 core\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"No memory cores found\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"RAM size is undetermined\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"RAM size is incorrect\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c\00", align 1
@__func__.brcmf_chip_tcm_rambase = private unnamed_addr constant [23 x i8] c"brcmf_chip_tcm_rambase\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"unknown chip: %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.brcmf_chip_recognition = private unnamed_addr constant [23 x i8] c"brcmf_chip_recognition\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"SB chip is not supported\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"chip backplane type %u is not supported\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__func__.brcmf_chip_sb_coredisable = private unnamed_addr constant [26 x i8] c"brcmf_chip_sb_coredisable\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"core state still busy\0A\00", align 1
@__func__.brcmf_chip_cores_check = private unnamed_addr constant [23 x i8] c"brcmf_chip_cores_check\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"CPU core not detected\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"RAM core not provided with ARM CM3 core\0A\00", align 1
@__func__.brcmf_chip_cm3_set_active = private unnamed_addr constant [26 x i8] c"brcmf_chip_cm3_set_active\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"SOCRAM core is down after reset?\0A\00", align 1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_name(i32 noundef %0, i32 noundef %1, ptr noundef returned writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = add i32 %0, -40961
  %6 = icmp ult i32 %5, -24577
  %7 = select i1 %6, ptr @.str, ptr @.str.1
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef %3, ptr noundef nonnull %7, i32 noundef %0, i32 noundef %1)
  ret ptr %2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @brcmf_chip_get_raminfo(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 3
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -12
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 2110
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %5, i32 -12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  br label %68

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %5, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %17, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %5, i32 -8
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 4
  %26 = tail call i32 %20(ptr noundef %22, i32 noundef %25) #7
  %27 = and i32 %26, 15
  %28 = lshr i32 %26, 4
  %29 = and i32 %28, 15
  %30 = add nuw nsw i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %32, %15
  %33 = phi i32 [ %57, %32 ], [ 0, %15 ]
  %34 = phi i32 [ %56, %32 ], [ 0, %15 ]
  %35 = load ptr, ptr %16, align 4
  %36 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %35, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %23, align 4
  %43 = add i32 %42, 64
  tail call void %39(ptr noundef %41, i32 noundef %43, i32 noundef %33) #7
  %44 = load ptr, ptr %16, align 4
  %45 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %44, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %23, align 4
  %51 = add i32 %50, 68
  %52 = tail call i32 %47(ptr noundef %49, i32 noundef %51) #7
  %53 = shl i32 %52, 13
  %54 = and i32 %53, 516096
  %55 = add i32 %34, 8192
  %56 = add i32 %55, %54
  %57 = add nuw nsw i32 %33, 1
  %58 = icmp eq i32 %57, %30
  br i1 %58, label %59, label %32

59:                                               ; preds = %32, %15
  %60 = phi i32 [ 0, %15 ], [ %56, %32 ]
  %61 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 8
  store i32 %60, ptr %61, align 4
  %62 = tail call fastcc i32 @brcmf_chip_tcm_rambase(ptr noundef %0)
  %63 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 7
  store i32 %62, ptr %63, align 4
  %64 = icmp eq i32 %62, -1
  br i1 %64, label %65, label %243

65:                                               ; preds = %59
  %66 = tail call i32 @net_ratelimit() #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %258, label %255

68:                                               ; preds = %72, %14
  %69 = phi ptr [ %70, %72 ], [ %2, %14 ]
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %2
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %70, i32 -12
  %74 = load i16, ptr %73, align 4
  %75 = icmp eq i16 %74, 2121
  br i1 %75, label %76, label %68

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %70, i32 -12
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %68
  br label %139

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %70, i32 8
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %82, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = tail call zeroext i1 %84(ptr noundef nonnull %77) #7
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %81, align 4
  %88 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %87, i32 0, i32 7
  %89 = load ptr, ptr %88, align 4
  tail call void %89(ptr noundef nonnull %77, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %90

90:                                               ; preds = %86, %80
  %91 = load ptr, ptr %81, align 4
  %92 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %91, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %70, i32 -8
  %98 = load i32, ptr %97, align 4
  %99 = tail call i32 %94(ptr noundef %96, i32 noundef %98) #7
  %100 = lshr i32 %99, 4
  %101 = and i32 %100, 15
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %130, label %103

103:                                              ; preds = %103, %90
  %104 = phi i32 [ %128, %103 ], [ 0, %90 ]
  %105 = phi i32 [ %127, %103 ], [ 0, %90 ]
  %106 = load ptr, ptr %81, align 4
  %107 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %106, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = load i32, ptr %97, align 4
  %114 = add i32 %113, 16
  tail call void %110(ptr noundef %112, i32 noundef %114, i32 noundef %104) #7
  %115 = load ptr, ptr %81, align 4
  %116 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %115, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %115, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = load i32, ptr %97, align 4
  %122 = add i32 %121, 64
  %123 = tail call i32 %118(ptr noundef %120, i32 noundef %122) #7
  %124 = shl i32 %123, 13
  %125 = and i32 %124, 1040384
  %126 = add i32 %105, 8192
  %127 = add i32 %126, %125
  %128 = add nuw nsw i32 %104, 1
  %129 = icmp eq i32 %128, %101
  br i1 %129, label %130, label %103

130:                                              ; preds = %103, %90
  %131 = phi i32 [ 0, %90 ], [ %127, %103 ]
  %132 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 8
  store i32 %131, ptr %132, align 4
  %133 = tail call fastcc i32 @brcmf_chip_tcm_rambase(ptr noundef %0)
  %134 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 7
  store i32 %133, ptr %134, align 4
  %135 = icmp eq i32 %133, -1
  br i1 %135, label %136, label %243

136:                                              ; preds = %130
  %137 = tail call i32 @net_ratelimit() #7
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %258, label %255

139:                                              ; preds = %143, %79
  %140 = phi ptr [ %141, %143 ], [ %2, %79 ]
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, %2
  br i1 %142, label %150, label %143

143:                                              ; preds = %139
  %144 = getelementptr i8, ptr %141, i32 -12
  %145 = load i16, ptr %144, align 4
  %146 = icmp eq i16 %145, 2062
  br i1 %146, label %147, label %139

147:                                              ; preds = %143
  %148 = getelementptr i8, ptr %141, i32 -12
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147, %139
  %151 = tail call i32 @net_ratelimit() #7
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %258, label %255

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 8
  %155 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 9
  store i32 0, ptr %154, align 4
  store i32 0, ptr %155, align 4
  %156 = getelementptr i8, ptr %141, i32 -10
  %157 = load i16, ptr %156, align 2
  %158 = icmp ult i16 %157, 4
  br i1 %158, label %159, label %160, !prof !8

159:                                              ; preds = %153
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 603, i32 noundef 9, ptr noundef null) #7
  br label %243

160:                                              ; preds = %153
  %161 = getelementptr i8, ptr %141, i32 8
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %162, i32 0, i32 5
  %164 = load ptr, ptr %163, align 4
  %165 = tail call zeroext i1 %164(ptr noundef nonnull %148) #7
  br i1 %165, label %170, label %166

166:                                              ; preds = %160
  %167 = load ptr, ptr %161, align 4
  %168 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %167, i32 0, i32 7
  %169 = load ptr, ptr %168, align 4
  tail call void %169(ptr noundef nonnull %148, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %170

170:                                              ; preds = %166, %160
  %171 = load ptr, ptr %161, align 4
  %172 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %171, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %171, i32 0, i32 2
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr i8, ptr %141, i32 -8
  %178 = load i32, ptr %177, align 4
  %179 = tail call i32 %174(ptr noundef %176, i32 noundef %178) #7
  %180 = lshr i32 %179, 4
  %181 = and i32 %180, 15
  %182 = load i16, ptr %156, align 2
  switch i16 %182, label %196 [
    i16 12, label %183
    i16 7, label %183
    i16 6, label %183
    i16 5, label %183
    i16 4, label %183
    i16 3, label %183
    i16 2, label %183
    i16 1, label %183
    i16 0, label %183
  ]

183:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170
  %184 = and i32 %179, 15
  %185 = lshr i32 %179, 20
  %186 = and i32 %185, 15
  %187 = icmp eq i32 %186, 0
  %188 = xor i1 %187, true
  %189 = sext i1 %188 to i32
  %190 = add nsw i32 %181, %189
  %191 = add nuw nsw i32 %184, 14
  %192 = shl i32 %190, %191
  store i32 %192, ptr %154, align 4
  br i1 %187, label %234, label %193

193:                                              ; preds = %183
  %194 = shl nuw nsw i32 8192, %186
  %195 = add i32 %192, %194
  store i32 %195, ptr %154, align 4
  br label %234

196:                                              ; preds = %170
  %197 = icmp ugt i16 %182, 22
  %198 = and i32 %180, 31
  %199 = select i1 %197, i32 %198, i32 %181
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %234, label %201

201:                                              ; preds = %231, %196
  %202 = phi i32 [ %232, %231 ], [ 0, %196 ]
  %203 = load ptr, ptr %161, align 4
  %204 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %203, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %205, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %203, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  %210 = load i32, ptr %177, align 4
  %211 = add i32 %210, 16
  tail call void %207(ptr noundef %209, i32 noundef %211, i32 noundef %202) #7
  %212 = load ptr, ptr %161, align 4
  %213 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %212, i32 0, i32 1
  %214 = load ptr, ptr %213, align 4
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %212, i32 0, i32 2
  %217 = load ptr, ptr %216, align 4
  %218 = load i32, ptr %177, align 4
  %219 = add i32 %218, 64
  %220 = tail call i32 %215(ptr noundef %217, i32 noundef %219) #7
  %221 = shl i32 %220, 13
  %222 = and i32 %221, 1040384
  %223 = add nuw nsw i32 %222, 8192
  %224 = and i32 %220, 65536
  %225 = icmp eq i32 %224, 0
  %226 = load i32, ptr %154, align 4
  %227 = add i32 %223, %226
  store i32 %227, ptr %154, align 4
  br i1 %225, label %231, label %228

228:                                              ; preds = %201
  %229 = load i32, ptr %155, align 4
  %230 = add i32 %229, %223
  store i32 %230, ptr %155, align 4
  br label %231

231:                                              ; preds = %228, %201
  %232 = add nuw nsw i32 %202, 1
  %233 = icmp eq i32 %232, %199
  br i1 %233, label %234, label %201

234:                                              ; preds = %231, %196, %193, %183
  %235 = load ptr, ptr %161, align 4
  %236 = load i32, ptr %235, align 4
  switch i32 %236, label %243 [
    i32 17204, label %237
    i32 43430, label %242
  ]

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.brcmf_chip, ptr %235, i32 0, i32 1
  %239 = load i32, ptr %238, align 4
  %240 = icmp ult i32 %239, 2
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  store i32 32768, ptr %155, align 4
  br label %243

242:                                              ; preds = %234
  store i32 65536, ptr %155, align 4
  br label %243

243:                                              ; preds = %242, %241, %237, %234, %159, %130, %59
  %244 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 8
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  %248 = tail call i32 @net_ratelimit() #7
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %258, label %255

250:                                              ; preds = %243
  %251 = icmp ugt i32 %245, 4194304
  br i1 %251, label %252, label %258

252:                                              ; preds = %250
  %253 = tail call i32 @net_ratelimit() #7
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %258, label %255

255:                                              ; preds = %252, %247, %150, %136, %65
  %256 = phi ptr [ @.str.2, %65 ], [ @.str.3, %136 ], [ @.str.4, %150 ], [ @.str.5, %247 ], [ @.str.6, %252 ]
  %257 = phi i32 [ -22, %65 ], [ -22, %136 ], [ -12, %150 ], [ -12, %247 ], [ -12, %252 ]
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_get_raminfo, ptr noundef nonnull %256) #7
  br label %258

258:                                              ; preds = %255, %252, %250, %247, %150, %136, %65
  %259 = phi i32 [ -22, %65 ], [ -22, %136 ], [ -12, %150 ], [ -12, %247 ], [ -12, %252 ], [ 0, %250 ], [ %257, %255 ]
  ret i32 %259
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_get_core(ptr noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 3
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -12
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -12
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_chip_tcm_rambase(ptr noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 4
  switch i32 %2, label %12 [
    i32 17221, label %17
    i32 17205, label %3
    i32 17209, label %3
    i32 17232, label %3
    i32 17236, label %3
    i32 17238, label %3
    i32 43567, label %3
    i32 43569, label %3
    i32 43570, label %3
    i32 17240, label %3
    i32 43602, label %3
    i32 17265, label %3
    i32 43465, label %4
    i32 43525, label %4
    i32 17253, label %4
    i32 17254, label %4
    i32 43664, label %4
    i32 43666, label %4
    i32 17241, label %5
    i32 17252, label %10
    i32 17267, label %10
    i32 43752, label %11
  ]

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %17

4:                                                ; preds = %1, %1, %1, %1, %1, %1
  br label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, 9
  %9 = select i1 %8, i32 1572864, i32 1441792
  br label %17

10:                                               ; preds = %1, %1
  br label %17

11:                                               ; preds = %1
  br label %17

12:                                               ; preds = %1
  %13 = tail call i32 @net_ratelimit() #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_tcm_rambase, ptr noundef nonnull @.str.8, ptr noundef %16) #7
  br label %17

17:                                               ; preds = %15, %12, %11, %10, %5, %4, %3, %1
  %18 = phi i32 [ 1507328, %11 ], [ 1441792, %10 ], [ %9, %5 ], [ 2097152, %4 ], [ 1572864, %3 ], [ 1671168, %1 ], [ -1, %15 ], [ -1, %12 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @brcmf_chip_enum_base(i16 zeroext %0) local_unnamed_addr #5 {
  ret i32 402653184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_attach(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1108, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i32 [ -22, %6 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1110, i32 noundef 9, ptr noundef null) #7
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi i32 [ -22, %12 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %2, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1112, i32 noundef 9, ptr noundef null) #7
  br label %19

19:                                               ; preds = %18, %13
  %20 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %2, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1114, i32 noundef 9, ptr noundef null) #7
  br label %500

24:                                               ; preds = %19
  %25 = icmp slt i32 %14, 0
  %26 = or i1 %25, %17
  br i1 %26, label %500, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 84) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %500, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 3
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 3, i32 1
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 4
  store i16 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 1
  store ptr %2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 2
  store ptr %0, ptr %36, align 8
  %37 = getelementptr inbounds %struct.brcmf_chip, ptr %29, i32 0, i32 2
  store i32 402653184, ptr %37, align 8
  %38 = load ptr, ptr %15, align 4
  %39 = tail call i32 %38(ptr noundef %0) #7
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %486, label %41

41:                                               ; preds = %31
  %42 = load ptr, ptr %35, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %36, align 8
  %45 = load i32, ptr %37, align 8
  %46 = tail call i32 %43(ptr noundef %44, i32 noundef %45) #7
  %47 = and i32 %46, 65535
  store i32 %47, ptr %29, align 8
  %48 = lshr i32 %46, 16
  %49 = and i32 %48, 15
  %50 = getelementptr inbounds %struct.brcmf_chip, ptr %29, i32 0, i32 1
  store i32 %49, ptr %50, align 4
  %51 = lshr i32 %46, 28
  %52 = getelementptr inbounds %struct.brcmf_chip, ptr %29, i32 0, i32 10
  %53 = add nsw i32 %47, -40961
  %54 = icmp ult i32 %53, -24577
  %55 = select i1 %54, ptr @.str, ptr @.str.1
  %56 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %52, i32 noundef 12, ptr noundef nonnull %55, i32 noundef %47, i32 noundef %49) #7
  %57 = icmp ult i32 %46, 268435456
  br i1 %57, label %58, label %194

58:                                               ; preds = %41
  %59 = load i32, ptr %29, align 8
  %60 = icmp eq i32 %59, 17193
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @net_ratelimit() #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %486, label %64

64:                                               ; preds = %61
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_recognition, ptr noundef nonnull @.str.9) #7
  br label %486

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 5
  store ptr @brcmf_chip_sb_iscoreup, ptr %66, align 8
  %67 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 6
  store ptr @brcmf_chip_sb_coredisable, ptr %67, align 4
  %68 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 7
  store ptr @brcmf_chip_sb_resetcore, ptr %68, align 8
  %69 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 24) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  store i16 2048, ptr %70, align 8
  %73 = getelementptr inbounds %struct.brcmf_core, ptr %70, i32 0, i32 2
  store i32 402653184, ptr %73, align 4
  %74 = getelementptr inbounds %struct.brcmf_core_priv, ptr %70, i32 0, i32 3
  store ptr %29, ptr %74, align 4
  %75 = getelementptr inbounds %struct.brcmf_core_priv, ptr %70, i32 0, i32 1
  store i32 0, ptr %75, align 8
  %76 = getelementptr inbounds %struct.brcmf_core_priv, ptr %70, i32 0, i32 2
  %77 = load ptr, ptr %33, align 8
  store ptr %76, ptr %33, align 8
  store ptr %32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.brcmf_core_priv, ptr %70, i32 0, i32 2, i32 1
  store ptr %77, ptr %78, align 8
  store volatile ptr %76, ptr %77, align 4
  br label %79

79:                                               ; preds = %72, %65
  %80 = phi ptr [ %70, %72 ], [ inttoptr (i32 -12 to ptr), %65 ]
  %81 = load ptr, ptr %35, align 4
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %36, align 8
  %84 = getelementptr inbounds %struct.brcmf_core, ptr %80, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 4092
  %87 = tail call i32 %82(ptr noundef %83, i32 noundef %86) #7
  %88 = lshr i32 %87, 8
  %89 = and i32 %88, 112
  %90 = and i32 %87, 15
  %91 = or i32 %89, %90
  %92 = trunc i32 %91 to i16
  %93 = getelementptr inbounds %struct.brcmf_core, ptr %80, i32 0, i32 1
  store i16 %92, ptr %93, align 2
  %94 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %95 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %94, i32 noundef 3520, i32 noundef 24) #8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %79
  store i16 2089, ptr %95, align 8
  %98 = getelementptr inbounds %struct.brcmf_core, ptr %95, i32 0, i32 2
  store i32 402722816, ptr %98, align 4
  %99 = getelementptr inbounds %struct.brcmf_core_priv, ptr %95, i32 0, i32 3
  store ptr %29, ptr %99, align 4
  %100 = getelementptr inbounds %struct.brcmf_core_priv, ptr %95, i32 0, i32 1
  store i32 0, ptr %100, align 8
  %101 = getelementptr inbounds %struct.brcmf_core_priv, ptr %95, i32 0, i32 2
  %102 = load ptr, ptr %33, align 8
  store ptr %101, ptr %33, align 8
  store ptr %32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.brcmf_core_priv, ptr %95, i32 0, i32 2, i32 1
  store ptr %102, ptr %103, align 8
  store volatile ptr %101, ptr %102, align 4
  br label %104

104:                                              ; preds = %97, %79
  %105 = phi ptr [ %95, %97 ], [ inttoptr (i32 -12 to ptr), %79 ]
  %106 = load ptr, ptr %35, align 4
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %36, align 8
  %109 = getelementptr inbounds %struct.brcmf_core, ptr %105, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 4092
  %112 = tail call i32 %107(ptr noundef %108, i32 noundef %111) #7
  %113 = lshr i32 %112, 8
  %114 = and i32 %113, 112
  %115 = and i32 %112, 15
  %116 = or i32 %114, %115
  %117 = trunc i32 %116 to i16
  %118 = getelementptr inbounds %struct.brcmf_core, ptr %105, i32 0, i32 1
  store i16 %117, ptr %118, align 2
  %119 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %120 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %119, i32 noundef 3520, i32 noundef 24) #8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %104
  store i16 2062, ptr %120, align 8
  %123 = getelementptr inbounds %struct.brcmf_core, ptr %120, i32 0, i32 2
  store i32 402665472, ptr %123, align 4
  %124 = getelementptr inbounds %struct.brcmf_core_priv, ptr %120, i32 0, i32 3
  store ptr %29, ptr %124, align 4
  %125 = getelementptr inbounds %struct.brcmf_core_priv, ptr %120, i32 0, i32 1
  store i32 0, ptr %125, align 8
  %126 = getelementptr inbounds %struct.brcmf_core_priv, ptr %120, i32 0, i32 2
  %127 = load ptr, ptr %33, align 8
  store ptr %126, ptr %33, align 8
  store ptr %32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.brcmf_core_priv, ptr %120, i32 0, i32 2, i32 1
  store ptr %127, ptr %128, align 8
  store volatile ptr %126, ptr %127, align 4
  br label %129

129:                                              ; preds = %122, %104
  %130 = phi ptr [ %120, %122 ], [ inttoptr (i32 -12 to ptr), %104 ]
  %131 = load ptr, ptr %35, align 4
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %36, align 8
  %134 = getelementptr inbounds %struct.brcmf_core, ptr %130, i32 0, i32 2
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, 4092
  %137 = tail call i32 %132(ptr noundef %133, i32 noundef %136) #7
  %138 = lshr i32 %137, 8
  %139 = and i32 %138, 112
  %140 = and i32 %137, 15
  %141 = or i32 %139, %140
  %142 = trunc i32 %141 to i16
  %143 = getelementptr inbounds %struct.brcmf_core, ptr %130, i32 0, i32 1
  store i16 %142, ptr %143, align 2
  %144 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %145 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %144, i32 noundef 3520, i32 noundef 24) #8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %129
  store i16 2090, ptr %145, align 8
  %148 = getelementptr inbounds %struct.brcmf_core, ptr %145, i32 0, i32 2
  store i32 402661376, ptr %148, align 4
  %149 = getelementptr inbounds %struct.brcmf_core_priv, ptr %145, i32 0, i32 3
  store ptr %29, ptr %149, align 4
  %150 = getelementptr inbounds %struct.brcmf_core_priv, ptr %145, i32 0, i32 1
  store i32 0, ptr %150, align 8
  %151 = getelementptr inbounds %struct.brcmf_core_priv, ptr %145, i32 0, i32 2
  %152 = load ptr, ptr %33, align 8
  store ptr %151, ptr %33, align 8
  store ptr %32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.brcmf_core_priv, ptr %145, i32 0, i32 2, i32 1
  store ptr %152, ptr %153, align 8
  store volatile ptr %151, ptr %152, align 4
  br label %154

154:                                              ; preds = %147, %129
  %155 = phi ptr [ %145, %147 ], [ inttoptr (i32 -12 to ptr), %129 ]
  %156 = load ptr, ptr %35, align 4
  %157 = load ptr, ptr %156, align 4
  %158 = load ptr, ptr %36, align 8
  %159 = getelementptr inbounds %struct.brcmf_core, ptr %155, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, 4092
  %162 = tail call i32 %157(ptr noundef %158, i32 noundef %161) #7
  %163 = lshr i32 %162, 8
  %164 = and i32 %163, 112
  %165 = and i32 %162, 15
  %166 = or i32 %164, %165
  %167 = trunc i32 %166 to i16
  %168 = getelementptr inbounds %struct.brcmf_core, ptr %155, i32 0, i32 1
  store i16 %167, ptr %168, align 2
  %169 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %170 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %169, i32 noundef 3520, i32 noundef 24) #8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %179, label %172

172:                                              ; preds = %154
  store i16 2066, ptr %170, align 8
  %173 = getelementptr inbounds %struct.brcmf_core, ptr %170, i32 0, i32 2
  store i32 402657280, ptr %173, align 4
  %174 = getelementptr inbounds %struct.brcmf_core_priv, ptr %170, i32 0, i32 3
  store ptr %29, ptr %174, align 4
  %175 = getelementptr inbounds %struct.brcmf_core_priv, ptr %170, i32 0, i32 1
  store i32 0, ptr %175, align 8
  %176 = getelementptr inbounds %struct.brcmf_core_priv, ptr %170, i32 0, i32 2
  %177 = load ptr, ptr %33, align 8
  store ptr %176, ptr %33, align 8
  store ptr %32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.brcmf_core_priv, ptr %170, i32 0, i32 2, i32 1
  store ptr %177, ptr %178, align 8
  store volatile ptr %176, ptr %177, align 4
  br label %179

179:                                              ; preds = %172, %154
  %180 = phi ptr [ %170, %172 ], [ inttoptr (i32 -12 to ptr), %154 ]
  %181 = load ptr, ptr %35, align 4
  %182 = load ptr, ptr %181, align 4
  %183 = load ptr, ptr %36, align 8
  %184 = getelementptr inbounds %struct.brcmf_core, ptr %180, i32 0, i32 2
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, 4092
  %187 = tail call i32 %182(ptr noundef %183, i32 noundef %186) #7
  %188 = lshr i32 %187, 8
  %189 = and i32 %188, 112
  %190 = and i32 %187, 15
  %191 = or i32 %189, %190
  %192 = trunc i32 %191 to i16
  %193 = getelementptr inbounds %struct.brcmf_core, ptr %180, i32 0, i32 1
  store i16 %192, ptr %193, align 2
  br label %363

194:                                              ; preds = %41
  %195 = icmp eq i32 %51, 1
  br i1 %195, label %196, label %359

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 5
  store ptr @brcmf_chip_ai_iscoreup, ptr %197, align 8
  %198 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 6
  store ptr @brcmf_chip_ai_coredisable, ptr %198, align 4
  %199 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %29, i32 0, i32 7
  store ptr @brcmf_chip_ai_resetcore, ptr %199, align 8
  %200 = load ptr, ptr %35, align 4
  %201 = load ptr, ptr %200, align 4
  %202 = load ptr, ptr %36, align 8
  %203 = load i32, ptr %37, align 8
  %204 = add i32 %203, 252
  %205 = tail call i32 %201(ptr noundef %202, i32 noundef %204) #7
  br label %206

206:                                              ; preds = %355, %196
  %207 = phi i32 [ %205, %196 ], [ %356, %355 ]
  %208 = load ptr, ptr %35, align 4
  %209 = load ptr, ptr %208, align 4
  %210 = load ptr, ptr %36, align 8
  %211 = tail call i32 %209(ptr noundef %210, i32 noundef %207) #7
  %212 = add i32 %207, 4
  %213 = trunc i32 %211 to i8
  %214 = and i8 %213, 15
  %215 = and i32 %211, 7
  %216 = icmp eq i32 %215, 5
  %217 = select i1 %216, i8 5, i8 %214
  %218 = and i32 %211, 1
  %219 = icmp eq i32 %218, 0
  %220 = icmp eq i8 %217, 0
  %221 = select i1 %219, i1 true, i1 %220
  %222 = icmp ne i8 %217, 1
  %223 = select i1 %221, i1 true, i1 %222
  br i1 %223, label %355, label %224

224:                                              ; preds = %206
  %225 = lshr i32 %211, 8
  %226 = trunc i32 %225 to i16
  %227 = and i16 %226, 4095
  %228 = load ptr, ptr %35, align 4
  %229 = load ptr, ptr %228, align 4
  %230 = load ptr, ptr %36, align 8
  %231 = tail call i32 %229(ptr noundef %230, i32 noundef %212) #7
  %232 = add i32 %207, 8
  %233 = trunc i32 %231 to i8
  %234 = and i8 %233, 15
  %235 = and i32 %231, 7
  %236 = icmp eq i32 %235, 5
  %237 = select i1 %236, i8 5, i8 %234
  %238 = and i32 %231, 15
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %241, label %240, !prof !9

240:                                              ; preds = %224
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 920, i32 noundef 9, ptr noundef null) #7
  br label %363

241:                                              ; preds = %224
  %242 = lshr i32 %231, 14
  %243 = and i32 %242, 31
  %244 = lshr i32 %231, 19
  %245 = and i32 %244, 31
  %246 = lshr i32 %231, 24
  %247 = sub nsw i32 0, %245
  %248 = icmp eq i32 %243, %247
  %249 = freeze i1 %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %241
  %251 = trunc i32 %225 to i12
  switch i12 %251, label %355 [
    i12 -1984, label %252
    i12 -2009, label %252
  ]

252:                                              ; preds = %250, %250, %241
  %253 = load ptr, ptr %35, align 4
  %254 = load ptr, ptr %253, align 4
  %255 = load ptr, ptr %36, align 8
  %256 = tail call i32 %254(ptr noundef %255, i32 noundef %232) #7
  %257 = add i32 %207, 12
  %258 = trunc i32 %256 to i4
  %259 = and i32 %256, 7
  %260 = icmp eq i32 %259, 5
  %261 = select i1 %260, i4 5, i4 %258
  switch i4 %261, label %355 [
    i4 3, label %263
    i4 5, label %262
  ]

262:                                              ; preds = %252
  br label %263

263:                                              ; preds = %262, %252
  %264 = phi i32 [ %232, %262 ], [ %257, %252 ]
  %265 = phi i32 [ 2, %262 ], [ 3, %252 ]
  br label %266

266:                                              ; preds = %330, %263
  %267 = phi i32 [ %264, %263 ], [ %331, %330 ]
  %268 = phi i32 [ 0, %263 ], [ %332, %330 ]
  %269 = phi i32 [ 0, %263 ], [ %333, %330 ]
  br label %270

270:                                              ; preds = %282, %266
  %271 = phi i32 [ %267, %266 ], [ %283, %282 ]
  %272 = load ptr, ptr %35, align 4
  %273 = load ptr, ptr %272, align 4
  %274 = load ptr, ptr %36, align 8
  %275 = tail call i32 %273(ptr noundef %274, i32 noundef %271) #7
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 15
  %278 = and i32 %275, 7
  %279 = icmp eq i32 %278, 5
  %280 = select i1 %279, i8 5, i8 %277
  %281 = icmp eq i8 %280, 15
  br i1 %281, label %355, label %282

282:                                              ; preds = %270
  %283 = add i32 %271, 4
  %284 = and i8 %280, 11
  %285 = icmp eq i8 %284, 1
  br i1 %285, label %286, label %270

286:                                              ; preds = %282
  %287 = icmp eq i8 %280, 1
  br i1 %287, label %337, label %288

288:                                              ; preds = %286
  %289 = and i32 %275, 8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %297, label %291

291:                                              ; preds = %288
  %292 = load ptr, ptr %35, align 4
  %293 = load ptr, ptr %292, align 4
  %294 = load ptr, ptr %36, align 8
  %295 = tail call i32 %293(ptr noundef %294, i32 noundef %283) #7
  %296 = add i32 %271, 8
  br label %297

297:                                              ; preds = %291, %288
  %298 = phi i32 [ %283, %288 ], [ %296, %291 ]
  %299 = lshr i32 %275, 4
  %300 = and i32 %299, 3
  %301 = icmp eq i32 %300, 3
  br i1 %301, label %302, label %316

302:                                              ; preds = %297
  %303 = load ptr, ptr %35, align 4
  %304 = load ptr, ptr %303, align 4
  %305 = load ptr, ptr %36, align 8
  %306 = tail call i32 %304(ptr noundef %305, i32 noundef %298) #7
  %307 = add i32 %298, 4
  %308 = and i32 %306, 8
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %330, label %310

310:                                              ; preds = %302
  %311 = load ptr, ptr %35, align 4
  %312 = load ptr, ptr %311, align 4
  %313 = load ptr, ptr %36, align 8
  %314 = tail call i32 %312(ptr noundef %313, i32 noundef %307) #7
  %315 = add i32 %298, 8
  br label %330

316:                                              ; preds = %297
  %317 = icmp ugt i32 %300, 1
  br i1 %317, label %330, label %318

318:                                              ; preds = %316
  %319 = lshr i32 %275, 6
  %320 = icmp eq i32 %268, 0
  %321 = and i32 %319, 3
  %322 = icmp eq i32 %321, 0
  %323 = select i1 %320, i1 %322, i1 false
  %324 = and i32 %275, -4096
  %325 = select i1 %323, i32 %324, i32 %268
  %326 = icmp eq i32 %269, 0
  %327 = icmp eq i32 %321, %265
  %328 = select i1 %326, i1 %327, i1 false
  %329 = select i1 %328, i32 %324, i32 %269
  br label %330

330:                                              ; preds = %318, %316, %310, %302
  %331 = phi i32 [ %307, %302 ], [ %315, %310 ], [ %298, %316 ], [ %298, %318 ]
  %332 = phi i32 [ %268, %302 ], [ %268, %310 ], [ %268, %316 ], [ %325, %318 ]
  %333 = phi i32 [ %269, %302 ], [ %269, %310 ], [ %269, %316 ], [ %329, %318 ]
  %334 = icmp eq i32 %332, 0
  %335 = icmp eq i32 %333, 0
  %336 = select i1 %334, i1 true, i1 %335
  br i1 %336, label %266, label %337

337:                                              ; preds = %330, %286
  %338 = phi i32 [ %271, %286 ], [ %331, %330 ]
  %339 = phi i32 [ %268, %286 ], [ %332, %330 ]
  %340 = phi i32 [ %269, %286 ], [ %333, %330 ]
  %341 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %342 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %341, i32 noundef 3520, i32 noundef 24) #8
  %343 = icmp eq ptr %342, null
  br i1 %343, label %363, label %344

344:                                              ; preds = %337
  store i16 %227, ptr %342, align 8
  %345 = getelementptr inbounds %struct.brcmf_core, ptr %342, i32 0, i32 2
  store i32 %339, ptr %345, align 4
  %346 = getelementptr inbounds %struct.brcmf_core_priv, ptr %342, i32 0, i32 3
  store ptr %29, ptr %346, align 4
  %347 = getelementptr inbounds %struct.brcmf_core_priv, ptr %342, i32 0, i32 1
  store i32 %340, ptr %347, align 8
  %348 = getelementptr inbounds %struct.brcmf_core_priv, ptr %342, i32 0, i32 2
  %349 = load ptr, ptr %33, align 8
  store ptr %348, ptr %33, align 8
  store ptr %32, ptr %348, align 4
  %350 = getelementptr inbounds %struct.brcmf_core_priv, ptr %342, i32 0, i32 2, i32 1
  store ptr %349, ptr %350, align 8
  store volatile ptr %348, ptr %349, align 4
  %351 = icmp ugt ptr %342, inttoptr (i32 -4096 to ptr)
  br i1 %351, label %363, label %352

352:                                              ; preds = %344
  %353 = trunc i32 %246 to i16
  %354 = getelementptr inbounds %struct.brcmf_core, ptr %342, i32 0, i32 1
  store i16 %353, ptr %354, align 2
  br label %355

355:                                              ; preds = %352, %270, %252, %250, %206
  %356 = phi i32 [ %212, %206 ], [ %232, %250 ], [ %338, %352 ], [ %232, %252 ], [ %271, %270 ]
  %357 = phi i8 [ %217, %206 ], [ %237, %250 ], [ %237, %352 ], [ %237, %252 ], [ %237, %270 ]
  %358 = icmp eq i8 %357, 15
  br i1 %358, label %363, label %206

359:                                              ; preds = %194
  %360 = tail call i32 @net_ratelimit() #7
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %486, label %362

362:                                              ; preds = %359
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_recognition, ptr noundef nonnull @.str.10, i32 noundef %51) #7
  br label %486

363:                                              ; preds = %355, %344, %337, %240, %179
  %364 = load ptr, ptr %32, align 4
  %365 = icmp eq ptr %364, %32
  br i1 %365, label %384, label %366

366:                                              ; preds = %377, %363
  %367 = phi ptr [ %381, %377 ], [ %364, %363 ]
  %368 = phi i1 [ %380, %377 ], [ false, %363 ]
  %369 = phi i1 [ %379, %377 ], [ false, %363 ]
  %370 = phi i1 [ %378, %377 ], [ false, %363 ]
  %371 = getelementptr i8, ptr %367, i32 -12
  %372 = load i16, ptr %371, align 4
  switch i16 %372, label %377 [
    i16 2090, label %373
    i16 2062, label %374
    i16 2110, label %375
    i16 2119, label %376
  ]

373:                                              ; preds = %366
  br label %377

374:                                              ; preds = %366
  br label %377

375:                                              ; preds = %366
  br label %377

376:                                              ; preds = %366
  br label %377

377:                                              ; preds = %376, %375, %374, %373, %366
  %378 = phi i1 [ %370, %366 ], [ true, %376 ], [ true, %375 ], [ %370, %374 ], [ true, %373 ]
  %379 = phi i1 [ %369, %366 ], [ %369, %376 ], [ %369, %375 ], [ true, %374 ], [ %369, %373 ]
  %380 = phi i1 [ %368, %366 ], [ %368, %376 ], [ %368, %375 ], [ %368, %374 ], [ true, %373 ]
  %381 = load ptr, ptr %367, align 4
  %382 = icmp eq ptr %381, %32
  br i1 %382, label %383, label %366

383:                                              ; preds = %377
  br i1 %378, label %387, label %384

384:                                              ; preds = %383, %363
  %385 = tail call i32 @net_ratelimit() #7
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %486, label %393

387:                                              ; preds = %383
  %388 = xor i1 %380, true
  %389 = select i1 %388, i1 true, i1 %379
  br i1 %389, label %396, label %390

390:                                              ; preds = %387
  %391 = tail call i32 @net_ratelimit() #7
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %486, label %393

393:                                              ; preds = %390, %384
  %394 = phi ptr [ @.str.12, %384 ], [ @.str.13, %390 ]
  %395 = phi i32 [ -6, %384 ], [ -19, %390 ]
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_cores_check, ptr noundef nonnull %394) #7
  br label %486

396:                                              ; preds = %387
  tail call void @brcmf_chip_set_passive(ptr noundef %29) #7
  %397 = load ptr, ptr %35, align 4
  %398 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %397, i32 0, i32 3
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %404, label %401

401:                                              ; preds = %396
  %402 = load ptr, ptr %36, align 8
  %403 = tail call i32 %399(ptr noundef %402, ptr noundef %29) #7
  tail call void @brcmf_chip_set_passive(ptr noundef %29) #7
  br label %404

404:                                              ; preds = %401, %396
  %405 = tail call i32 @brcmf_chip_get_raminfo(ptr noundef %29) #7
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %486, label %407

407:                                              ; preds = %404
  %408 = load ptr, ptr %32, align 4
  %409 = getelementptr i8, ptr %408, i32 -8
  %410 = load i32, ptr %409, align 4
  %411 = load ptr, ptr %35, align 4
  %412 = load ptr, ptr %411, align 4
  %413 = load ptr, ptr %36, align 8
  %414 = add i32 %410, 4
  %415 = tail call i32 %412(ptr noundef %413, i32 noundef %414) #7
  %416 = getelementptr inbounds %struct.brcmf_chip, ptr %29, i32 0, i32 3
  store i32 %415, ptr %416, align 4
  %417 = load ptr, ptr %35, align 4
  %418 = load ptr, ptr %417, align 4
  %419 = load ptr, ptr %36, align 8
  %420 = add i32 %410, 172
  %421 = tail call i32 %418(ptr noundef %419, i32 noundef %420) #7
  %422 = getelementptr inbounds %struct.brcmf_chip, ptr %29, i32 0, i32 4
  store i32 %421, ptr %422, align 8
  %423 = load ptr, ptr %32, align 4
  %424 = getelementptr i8, ptr %423, i32 -12
  %425 = icmp eq ptr %424, null
  br i1 %425, label %429, label %426

426:                                              ; preds = %407
  %427 = load i16, ptr %424, align 4
  %428 = icmp eq i16 %427, 2048
  br i1 %428, label %440, label %429, !prof !9

429:                                              ; preds = %426, %407
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1197, i32 noundef 9, ptr noundef null) #7
  br label %430

430:                                              ; preds = %434, %429
  %431 = phi ptr [ %32, %429 ], [ %432, %434 ]
  %432 = load ptr, ptr %431, align 4
  %433 = icmp eq ptr %432, %32
  br i1 %433, label %440, label %434

434:                                              ; preds = %430
  %435 = getelementptr i8, ptr %432, i32 -12
  %436 = load i16, ptr %435, align 4
  %437 = icmp eq i16 %436, 2048
  br i1 %437, label %438, label %430

438:                                              ; preds = %434
  %439 = getelementptr i8, ptr %432, i32 -12
  br label %440

440:                                              ; preds = %438, %430, %426
  %441 = phi ptr [ %424, %426 ], [ %439, %438 ], [ null, %430 ]
  %442 = getelementptr inbounds %struct.brcmf_core, ptr %441, i32 0, i32 1
  %443 = load i16, ptr %442, align 2
  %444 = icmp ugt i16 %443, 34
  br i1 %444, label %445, label %460

445:                                              ; preds = %440
  %446 = load i32, ptr %422, align 8
  %447 = and i32 %446, 64
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %460, label %449

449:                                              ; preds = %453, %445
  %450 = phi ptr [ %451, %453 ], [ %32, %445 ]
  %451 = load ptr, ptr %450, align 4
  %452 = icmp eq ptr %451, %32
  br i1 %452, label %460, label %453

453:                                              ; preds = %449
  %454 = getelementptr i8, ptr %451, i32 -12
  %455 = load i16, ptr %454, align 4
  %456 = icmp eq i16 %455, 2087
  br i1 %456, label %457, label %449

457:                                              ; preds = %453
  %458 = getelementptr i8, ptr %451, i32 -12
  %459 = icmp eq ptr %458, null
  br i1 %459, label %460, label %461

460:                                              ; preds = %457, %449, %445, %440
  br label %461

461:                                              ; preds = %460, %457
  %462 = phi ptr [ %441, %460 ], [ %458, %457 ]
  %463 = load i32, ptr %416, align 4
  %464 = and i32 %463, 268435456
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %477, label %466

466:                                              ; preds = %461
  %467 = load ptr, ptr %35, align 4
  %468 = load ptr, ptr %467, align 4
  %469 = load ptr, ptr %36, align 8
  %470 = getelementptr inbounds %struct.brcmf_core, ptr %462, i32 0, i32 2
  %471 = load i32, ptr %470, align 4
  %472 = add i32 %471, 1540
  %473 = tail call i32 %468(ptr noundef %469, i32 noundef %472) #7
  %474 = and i32 %473, 255
  %475 = getelementptr inbounds %struct.brcmf_chip, ptr %29, i32 0, i32 6
  store i32 %474, ptr %475, align 8
  %476 = getelementptr inbounds %struct.brcmf_chip, ptr %29, i32 0, i32 5
  store i32 %473, ptr %476, align 4
  br label %477

477:                                              ; preds = %466, %461
  %478 = load ptr, ptr %35, align 4
  %479 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %478, i32 0, i32 4
  %480 = load ptr, ptr %479, align 4
  %481 = icmp eq ptr %480, null
  br i1 %481, label %500, label %482

482:                                              ; preds = %477
  %483 = load ptr, ptr %36, align 8
  %484 = tail call i32 %480(ptr noundef %483, ptr noundef %29) #7
  %485 = icmp slt i32 %484, 0
  br i1 %485, label %486, label %500

486:                                              ; preds = %482, %404, %393, %390, %384, %362, %359, %64, %61, %31
  %487 = phi i32 [ %39, %31 ], [ %405, %404 ], [ %484, %482 ], [ -6, %384 ], [ -19, %390 ], [ %395, %393 ], [ -19, %359 ], [ -19, %362 ], [ -19, %61 ], [ -19, %64 ]
  %488 = load ptr, ptr %32, align 4
  %489 = icmp eq ptr %488, %32
  br i1 %489, label %498, label %490

490:                                              ; preds = %490, %486
  %491 = phi ptr [ %493, %490 ], [ %488, %486 ]
  %492 = getelementptr i8, ptr %491, i32 -12
  %493 = load ptr, ptr %491, align 4
  %494 = getelementptr inbounds %struct.list_head, ptr %491, i32 0, i32 1
  %495 = load ptr, ptr %494, align 4
  %496 = getelementptr inbounds %struct.list_head, ptr %493, i32 0, i32 1
  store ptr %495, ptr %496, align 4
  store volatile ptr %493, ptr %495, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %491, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %494, align 4
  tail call void @kfree(ptr noundef %492) #7
  %497 = icmp eq ptr %493, %32
  br i1 %497, label %498, label %490

498:                                              ; preds = %490, %486
  tail call void @kfree(ptr noundef %29) #7
  %499 = inttoptr i32 %487 to ptr
  br label %500

500:                                              ; preds = %498, %482, %477, %27, %24, %23
  %501 = phi ptr [ %499, %498 ], [ %29, %482 ], [ inttoptr (i32 -22 to ptr), %23 ], [ inttoptr (i32 -22 to ptr), %24 ], [ inttoptr (i32 -12 to ptr), %27 ], [ %29, %477 ]
  ret ptr %501
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_chip_detach(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -12
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @kfree(ptr noundef %7) #7
  %12 = icmp eq ptr %8, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_get_d11core(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %21, label %6

6:                                                ; preds = %15, %2
  %7 = phi ptr [ %17, %15 ], [ %4, %2 ]
  %8 = phi i8 [ %16, %15 ], [ %1, %2 ]
  %9 = getelementptr i8, ptr %7, i32 -12
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 2066
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = add i8 %8, -1
  %14 = icmp eq i8 %8, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12, %6
  %16 = phi i8 [ %13, %12 ], [ %8, %6 ]
  %17 = load ptr, ptr %7, align 4
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %21, label %6

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %7, i32 -12
  br label %21

21:                                               ; preds = %19, %15, %2
  %22 = phi ptr [ null, %2 ], [ %20, %19 ], [ null, %15 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_get_chipcommon(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i16, ptr %4, align 4
  %8 = icmp eq i16 %7, 2048
  br i1 %8, label %20, label %9, !prof !9

9:                                                ; preds = %6, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1197, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %14, %9
  %11 = phi ptr [ %2, %9 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 -12
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 2048
  br i1 %17, label %18, label %10

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %12, i32 -12
  br label %20

20:                                               ; preds = %18, %10, %6
  %21 = phi ptr [ %4, %6 ], [ %19, %18 ], [ null, %10 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @brcmf_chip_get_pmu(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i16, ptr %4, align 4
  %8 = icmp eq i16 %7, 2048
  br i1 %8, label %20, label %9, !prof !9

9:                                                ; preds = %6, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1197, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %14, %9
  %11 = phi ptr [ %2, %9 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 -12
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 2048
  br i1 %17, label %18, label %10

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %12, i32 -12
  br label %20

20:                                               ; preds = %18, %10, %6
  %21 = phi ptr [ %4, %6 ], [ %19, %18 ], [ null, %10 ]
  %22 = getelementptr inbounds %struct.brcmf_core, ptr %21, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = icmp ugt i16 %23, 34
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %34, %25
  %31 = phi ptr [ %32, %34 ], [ %2, %25 ]
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %32, i32 -12
  %36 = load i16, ptr %35, align 4
  %37 = icmp eq i16 %36, 2087
  br i1 %37, label %38, label %30

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %32, i32 -12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %30, %25, %20
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi ptr [ %21, %41 ], [ %39, %38 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_chip_iscoreup(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i1 %5(ptr noundef %0) #7
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_chip_coredisable(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_chip_resetcore(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_chip_set_passive(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 3
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -12
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 2110
  br i1 %10, label %11, label %3

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %5, i32 -12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  br label %58

15:                                               ; preds = %19, %11
  %16 = phi ptr [ %17, %19 ], [ %2, %11 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %2
  br i1 %18, label %41, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %17, i32 -12
  %21 = load i16, ptr %20, align 4
  %22 = icmp eq i16 %21, 2110
  br i1 %22, label %23, label %15

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %17, i32 -12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %17, i32 -4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1032
  %35 = tail call i32 %29(ptr noundef %31, i32 noundef %34) #7
  %36 = and i32 %35, 32
  %37 = getelementptr i8, ptr %17, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %38, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef nonnull %24, i32 noundef %36, i32 noundef 32, i32 noundef 32) #7
  br label %41

41:                                               ; preds = %26, %23, %15
  br label %42

42:                                               ; preds = %46, %41
  %43 = phi ptr [ %44, %46 ], [ %2, %41 ]
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %2
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %44, i32 -12
  %48 = load i16, ptr %47, align 4
  %49 = icmp eq i16 %48, 2066
  br i1 %49, label %50, label %42

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %44, i32 -12
  br label %52

52:                                               ; preds = %50, %42
  %53 = phi ptr [ %51, %50 ], [ null, %42 ]
  %54 = getelementptr inbounds %struct.brcmf_core_priv, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %55, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  tail call void %57(ptr noundef %53, i32 noundef 12, i32 noundef 4, i32 noundef 4) #7
  br label %195

58:                                               ; preds = %62, %14
  %59 = phi ptr [ %60, %62 ], [ %2, %14 ]
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %2
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %60, i32 -12
  %64 = load i16, ptr %63, align 4
  %65 = icmp eq i16 %64, 2119
  br i1 %65, label %66, label %58

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %60, i32 -12
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %58
  br label %113

70:                                               ; preds = %74, %66
  %71 = phi ptr [ %72, %74 ], [ %2, %66 ]
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %2
  br i1 %73, label %96, label %74

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %72, i32 -12
  %76 = load i16, ptr %75, align 4
  %77 = icmp eq i16 %76, 2119
  br i1 %77, label %78, label %70

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %72, i32 -12
  %80 = icmp eq ptr %79, null
  br i1 %80, label %96, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %72, i32 -4
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, 1032
  %90 = tail call i32 %84(ptr noundef %86, i32 noundef %89) #7
  %91 = and i32 %90, 32
  %92 = getelementptr i8, ptr %72, i32 8
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %93, i32 0, i32 7
  %95 = load ptr, ptr %94, align 4
  tail call void %95(ptr noundef nonnull %79, i32 noundef %91, i32 noundef 32, i32 noundef 32) #7
  br label %96

96:                                               ; preds = %81, %78, %70
  br label %97

97:                                               ; preds = %101, %96
  %98 = phi ptr [ %99, %101 ], [ %2, %96 ]
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %2
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %99, i32 -12
  %103 = load i16, ptr %102, align 4
  %104 = icmp eq i16 %103, 2066
  br i1 %104, label %105, label %97

105:                                              ; preds = %101
  %106 = getelementptr i8, ptr %99, i32 -12
  br label %107

107:                                              ; preds = %105, %97
  %108 = phi ptr [ %106, %105 ], [ null, %97 ]
  %109 = getelementptr inbounds %struct.brcmf_core_priv, ptr %108, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %110, i32 0, i32 7
  %112 = load ptr, ptr %111, align 4
  tail call void %112(ptr noundef %108, i32 noundef 12, i32 noundef 4, i32 noundef 4) #7
  br label %195

113:                                              ; preds = %117, %69
  %114 = phi ptr [ %115, %117 ], [ %2, %69 ]
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %2
  br i1 %116, label %195, label %117

117:                                              ; preds = %113
  %118 = getelementptr i8, ptr %115, i32 -12
  %119 = load i16, ptr %118, align 4
  %120 = icmp eq i16 %119, 2090
  br i1 %120, label %121, label %113

121:                                              ; preds = %117
  %122 = getelementptr i8, ptr %115, i32 -12
  %123 = icmp eq ptr %122, null
  br i1 %123, label %195, label %124

124:                                              ; preds = %128, %121
  %125 = phi ptr [ %126, %128 ], [ %2, %121 ]
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %2
  br i1 %127, label %140, label %128

128:                                              ; preds = %124
  %129 = getelementptr i8, ptr %126, i32 -12
  %130 = load i16, ptr %129, align 4
  %131 = icmp eq i16 %130, 2090
  br i1 %131, label %132, label %124

132:                                              ; preds = %128
  %133 = getelementptr i8, ptr %126, i32 -12
  %134 = icmp eq ptr %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = getelementptr i8, ptr %126, i32 8
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %137, i32 0, i32 6
  %139 = load ptr, ptr %138, align 4
  tail call void %139(ptr noundef nonnull %133, i32 noundef 0, i32 noundef 0) #7
  br label %140

140:                                              ; preds = %135, %132, %124
  br label %141

141:                                              ; preds = %145, %140
  %142 = phi ptr [ %143, %145 ], [ %2, %140 ]
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, %2
  br i1 %144, label %151, label %145

145:                                              ; preds = %141
  %146 = getelementptr i8, ptr %143, i32 -12
  %147 = load i16, ptr %146, align 4
  %148 = icmp eq i16 %147, 2066
  br i1 %148, label %149, label %141

149:                                              ; preds = %145
  %150 = getelementptr i8, ptr %143, i32 -12
  br label %151

151:                                              ; preds = %149, %141
  %152 = phi ptr [ %150, %149 ], [ null, %141 ]
  %153 = getelementptr inbounds %struct.brcmf_core_priv, ptr %152, i32 0, i32 3
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %154, i32 0, i32 7
  %156 = load ptr, ptr %155, align 4
  tail call void %156(ptr noundef %152, i32 noundef 12, i32 noundef 4, i32 noundef 4) #7
  br label %157

157:                                              ; preds = %161, %151
  %158 = phi ptr [ %2, %151 ], [ %159, %161 ]
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, %2
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = getelementptr i8, ptr %159, i32 -12
  %163 = load i16, ptr %162, align 4
  %164 = icmp eq i16 %163, 2062
  br i1 %164, label %165, label %157

165:                                              ; preds = %161
  %166 = getelementptr i8, ptr %159, i32 -12
  br label %167

167:                                              ; preds = %165, %157
  %168 = phi ptr [ %166, %165 ], [ null, %157 ]
  %169 = getelementptr inbounds %struct.brcmf_core_priv, ptr %168, i32 0, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %170, i32 0, i32 7
  %172 = load ptr, ptr %171, align 4
  tail call void %172(ptr noundef %168, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %173 = load i32, ptr %0, align 4
  %174 = icmp eq i32 %173, 43430
  br i1 %174, label %175, label %195

175:                                              ; preds = %167
  %176 = load ptr, ptr %169, align 4
  %177 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %176, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %178, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %176, i32 0, i32 2
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.brcmf_core, ptr %168, i32 0, i32 2
  %184 = load i32, ptr %183, align 4
  %185 = add i32 %184, 16
  tail call void %180(ptr noundef %182, i32 noundef %185, i32 noundef 3) #7
  %186 = load ptr, ptr %169, align 4
  %187 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %186, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %188, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %186, i32 0, i32 2
  %192 = load ptr, ptr %191, align 4
  %193 = load i32, ptr %183, align 4
  %194 = add i32 %193, 68
  tail call void %190(ptr noundef %192, i32 noundef %194, i32 noundef 0) #7
  br label %195

195:                                              ; preds = %175, %167, %121, %113, %107, %52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_chip_set_active(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 3
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -12
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 2110
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  br label %39

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0, i32 noundef %1) #7
  br label %23

23:                                               ; preds = %27, %16
  %24 = phi ptr [ %3, %16 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %3
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %25, i32 -12
  %29 = load i16, ptr %28, align 4
  %30 = icmp eq i16 %29, 2110
  br i1 %30, label %31, label %23

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %25, i32 -12
  br label %33

33:                                               ; preds = %31, %23
  %34 = phi ptr [ %32, %31 ], [ null, %23 ]
  %35 = getelementptr inbounds %struct.brcmf_core_priv, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %36, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %34, i32 noundef 32, i32 noundef 0, i32 noundef 0) #7
  br label %129

39:                                               ; preds = %43, %15
  %40 = phi ptr [ %41, %43 ], [ %3, %15 ]
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %3
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %41, i32 -12
  %45 = load i16, ptr %44, align 4
  %46 = icmp eq i16 %45, 2119
  br i1 %46, label %47, label %39

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %41, i32 -12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %39
  br label %74

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %53, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  tail call void %55(ptr noundef %57, ptr noundef %0, i32 noundef %1) #7
  br label %58

58:                                               ; preds = %62, %51
  %59 = phi ptr [ %3, %51 ], [ %60, %62 ]
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %3
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %60, i32 -12
  %64 = load i16, ptr %63, align 4
  %65 = icmp eq i16 %64, 2119
  br i1 %65, label %66, label %58

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %60, i32 -12
  br label %68

68:                                               ; preds = %66, %58
  %69 = phi ptr [ %67, %66 ], [ null, %58 ]
  %70 = getelementptr inbounds %struct.brcmf_core_priv, ptr %69, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %71, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef %69, i32 noundef 32, i32 noundef 0, i32 noundef 0) #7
  br label %129

74:                                               ; preds = %78, %50
  %75 = phi ptr [ %76, %78 ], [ %3, %50 ]
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %3
  br i1 %77, label %129, label %78

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %76, i32 -12
  %80 = load i16, ptr %79, align 4
  %81 = icmp eq i16 %80, 2090
  br i1 %81, label %82, label %74

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %76, i32 -12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %129, label %85

85:                                               ; preds = %89, %82
  %86 = phi ptr [ %87, %89 ], [ %3, %82 ]
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %3
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = getelementptr i8, ptr %87, i32 -12
  %91 = load i16, ptr %90, align 4
  %92 = icmp eq i16 %91, 2062
  br i1 %92, label %93, label %85

93:                                               ; preds = %89
  %94 = getelementptr i8, ptr %87, i32 -12
  br label %95

95:                                               ; preds = %93, %85
  %96 = phi ptr [ %94, %93 ], [ null, %85 ]
  %97 = getelementptr inbounds %struct.brcmf_core_priv, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %98, i32 0, i32 5
  %100 = load ptr, ptr %99, align 4
  %101 = tail call zeroext i1 %100(ptr noundef %96) #7
  br i1 %101, label %106, label %102

102:                                              ; preds = %95
  %103 = tail call i32 @net_ratelimit() #7
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %129, label %105

105:                                              ; preds = %102
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_cm3_set_active, ptr noundef nonnull @.str.15) #7
  br label %129

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %108, i32 0, i32 5
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  tail call void %110(ptr noundef %112, ptr noundef %0, i32 noundef 0) #7
  br label %113

113:                                              ; preds = %117, %106
  %114 = phi ptr [ %3, %106 ], [ %115, %117 ]
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %3
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = getelementptr i8, ptr %115, i32 -12
  %119 = load i16, ptr %118, align 4
  %120 = icmp eq i16 %119, 2090
  br i1 %120, label %121, label %113

121:                                              ; preds = %117
  %122 = getelementptr i8, ptr %115, i32 -12
  br label %123

123:                                              ; preds = %121, %113
  %124 = phi ptr [ %122, %121 ], [ null, %113 ]
  %125 = getelementptr inbounds %struct.brcmf_core_priv, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %126, i32 0, i32 7
  %128 = load ptr, ptr %127, align 4
  tail call void %128(ptr noundef %124, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %129

129:                                              ; preds = %123, %105, %102, %82, %74, %68, %33
  %130 = phi i1 [ true, %33 ], [ true, %68 ], [ false, %82 ], [ false, %102 ], [ false, %105 ], [ true, %123 ], [ false, %74 ]
  ret i1 %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @brcmf_chip_sr_capable(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i16, ptr %4, align 4
  %8 = icmp eq i16 %7, 2048
  br i1 %8, label %20, label %9, !prof !9

9:                                                ; preds = %6, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1197, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %14, %9
  %11 = phi ptr [ %2, %9 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 -12
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 2048
  br i1 %17, label %18, label %10

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %12, i32 -12
  br label %20

20:                                               ; preds = %18, %10, %6
  %21 = phi ptr [ %4, %6 ], [ %19, %18 ], [ null, %10 ]
  %22 = getelementptr inbounds %struct.brcmf_core, ptr %21, i32 0, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = icmp ugt i16 %23, 34
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %34, %25
  %31 = phi ptr [ %32, %34 ], [ %2, %25 ]
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %32, i32 -12
  %36 = load i16, ptr %35, align 4
  %37 = icmp eq i16 %36, 2087
  br i1 %37, label %38, label %30

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %32, i32 -12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %30, %25, %20
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi ptr [ %21, %41 ], [ %39, %38 ]
  %44 = getelementptr inbounds %struct.brcmf_chip, ptr %0, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %45, 17
  br i1 %46, label %142, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr i8, ptr %48, i32 -12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i16, ptr %49, align 4
  %53 = icmp eq i16 %52, 2048
  br i1 %53, label %65, label %54, !prof !9

54:                                               ; preds = %51, %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1197, i32 noundef 9, ptr noundef null) #7
  br label %55

55:                                               ; preds = %59, %54
  %56 = phi ptr [ %2, %54 ], [ %57, %59 ]
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %2
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %57, i32 -12
  %61 = load i16, ptr %60, align 4
  %62 = icmp eq i16 %61, 2048
  br i1 %62, label %63, label %55

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %57, i32 -12
  br label %65

65:                                               ; preds = %63, %55, %51
  %66 = phi ptr [ %49, %51 ], [ %64, %63 ], [ null, %55 ]
  %67 = getelementptr inbounds %struct.brcmf_core, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %0, align 4
  switch i32 %69, label %121 [
    i32 17236, label %70
    i32 17238, label %70
    i32 17221, label %70
    i32 17188, label %71
    i32 17205, label %71
    i32 17209, label %71
    i32 43430, label %90
    i32 17267, label %99
    i32 17241, label %109
    i32 43752, label %109
    i32 43012, label %109
  ]

70:                                               ; preds = %65, %65, %65
  br label %71

71:                                               ; preds = %70, %65, %65, %65
  %72 = phi i32 [ -1, %65 ], [ -1, %65 ], [ -1, %65 ], [ 4, %70 ]
  %73 = getelementptr inbounds %struct.brcmf_core, ptr %43, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1616
  %76 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  tail call void %79(ptr noundef %81, i32 noundef %75, i32 noundef 3) #7
  %82 = load i32, ptr %73, align 4
  %83 = add i32 %82, 1620
  %84 = load ptr, ptr %76, align 4
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %80, align 4
  %87 = tail call i32 %85(ptr noundef %86, i32 noundef %83) #7
  %88 = and i32 %87, %72
  %89 = icmp ne i32 %88, 0
  br label %142

90:                                               ; preds = %65
  %91 = add i32 %68, 1288
  %92 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 %94(ptr noundef %96, i32 noundef %91) #7
  %98 = icmp ne i32 %97, 0
  br label %142

99:                                               ; preds = %65
  %100 = add i32 %68, 1284
  %101 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = tail call i32 %103(ptr noundef %105, i32 noundef %100) #7
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  br label %142

109:                                              ; preds = %65, %65, %65
  %110 = getelementptr inbounds %struct.brcmf_core, ptr %43, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, 1648
  %113 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = tail call i32 %115(ptr noundef %117, i32 noundef %112) #7
  %119 = and i32 %118, 201326592
  %120 = icmp eq i32 %119, 0
  br label %142

121:                                              ; preds = %65
  %122 = getelementptr inbounds %struct.brcmf_core, ptr %43, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, 1612
  %125 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %0, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = tail call i32 %127(ptr noundef %129, i32 noundef %124) #7
  %131 = and i32 %130, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %121
  %134 = load i32, ptr %122, align 4
  %135 = add i32 %134, 1648
  %136 = load ptr, ptr %125, align 4
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %128, align 4
  %139 = tail call i32 %137(ptr noundef %138, i32 noundef %135) #7
  %140 = and i32 %139, 201326592
  %141 = icmp eq i32 %140, 0
  br label %142

142:                                              ; preds = %133, %121, %109, %99, %90, %71, %42
  %143 = phi i1 [ %141, %133 ], [ %120, %109 ], [ %108, %99 ], [ %98, %90 ], [ %89, %71 ], [ false, %42 ], [ false, %121 ]
  ret i1 %143
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @brcmf_chip_sb_iscoreup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmf_core, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 3992
  %7 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %9(ptr noundef %11, i32 noundef %6) #7
  %13 = and i32 %12, 33619971
  %14 = icmp eq i32 %13, 65536
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_chip_sb_coredisable(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_core, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = add i32 %7, 3992
  %14 = tail call i32 %10(ptr noundef %12, i32 noundef %13) #7
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %144

17:                                               ; preds = %3
  %18 = load ptr, ptr %8, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = tail call i32 %19(ptr noundef %20, i32 noundef %13) #7
  %22 = and i32 %21, 65536
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %138, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %8, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %11, align 4
  %28 = tail call i32 %26(ptr noundef %27, i32 noundef %13) #7
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %11, align 4
  %33 = or i32 %28, 2
  tail call void %31(ptr noundef %32, i32 noundef %13, i32 noundef %33) #7
  %34 = load ptr, ptr %8, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %11, align 4
  %37 = tail call i32 %35(ptr noundef %36, i32 noundef %13) #7
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #7
  %39 = add i32 %7, 3996
  %40 = load ptr, ptr %8, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %11, align 4
  %43 = tail call i32 %41(ptr noundef %42, i32 noundef %39) #7
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %46, %24
  %47 = phi i32 [ %49, %46 ], [ 100009, %24 ]
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #7
  %49 = add nsw i32 %47, -10
  %50 = load ptr, ptr %8, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %11, align 4
  %53 = tail call i32 %51(ptr noundef %52, i32 noundef %39) #7
  %54 = and i32 %53, 4
  %55 = icmp ne i32 %54, 0
  %56 = icmp ugt i32 %49, 9
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %46, label %58

58:                                               ; preds = %46, %24
  %59 = load ptr, ptr %8, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %11, align 4
  %62 = tail call i32 %60(ptr noundef %61, i32 noundef %39) #7
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = tail call i32 @net_ratelimit() #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_chip_sb_coredisable, ptr noundef nonnull @.str.11) #7
  br label %69

69:                                               ; preds = %68, %65, %58
  %70 = load ptr, ptr %8, align 4
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %11, align 4
  %73 = add i32 %7, 4088
  %74 = tail call i32 %71(ptr noundef %72, i32 noundef %73) #7
  %75 = and i32 %74, 128
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %111, label %77

77:                                               ; preds = %69
  %78 = load ptr, ptr %8, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %11, align 4
  %81 = add i32 %7, 3984
  %82 = tail call i32 %79(ptr noundef %80, i32 noundef %81) #7
  %83 = or i32 %82, 33554432
  %84 = load ptr, ptr %8, align 4
  %85 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %11, align 4
  tail call void %86(ptr noundef %87, i32 noundef %81, i32 noundef %83) #7
  %88 = load ptr, ptr %8, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %11, align 4
  %91 = tail call i32 %89(ptr noundef %90, i32 noundef %81) #7
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 214748) #7
  %93 = load ptr, ptr %8, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %11, align 4
  %96 = tail call i32 %94(ptr noundef %95, i32 noundef %81) #7
  %97 = and i32 %96, 25165824
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %99, %77
  %100 = phi i32 [ %102, %99 ], [ 100009, %77 ]
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 2147480) #7
  %102 = add nsw i32 %100, -10
  %103 = load ptr, ptr %8, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %11, align 4
  %106 = tail call i32 %104(ptr noundef %105, i32 noundef %81) #7
  %107 = and i32 %106, 25165824
  %108 = icmp ne i32 %107, 0
  %109 = icmp ugt i32 %102, 9
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %99, label %111

111:                                              ; preds = %99, %77, %69
  %112 = load ptr, ptr %8, align 4
  %113 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %11, align 4
  tail call void %114(ptr noundef %115, i32 noundef %13, i32 noundef 196611) #7
  %116 = load ptr, ptr %8, align 4
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %11, align 4
  %119 = tail call i32 %117(ptr noundef %118, i32 noundef %13) #7
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 2147480) #7
  %121 = load ptr, ptr %8, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %11, align 4
  %124 = tail call i32 %122(ptr noundef %123, i32 noundef %73) #7
  %125 = and i32 %124, 128
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %111
  %128 = load ptr, ptr %8, align 4
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %11, align 4
  %131 = add i32 %7, 3984
  %132 = tail call i32 %129(ptr noundef %130, i32 noundef %131) #7
  %133 = and i32 %132, -33554433
  %134 = load ptr, ptr %8, align 4
  %135 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = load ptr, ptr %11, align 4
  tail call void %136(ptr noundef %137, i32 noundef %131, i32 noundef %133) #7
  br label %138

138:                                              ; preds = %127, %111, %17
  %139 = load ptr, ptr %8, align 4
  %140 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = load ptr, ptr %11, align 4
  tail call void %141(ptr noundef %142, i32 noundef %13, i32 noundef 3) #7
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748) #7
  br label %144

144:                                              ; preds = %138, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_chip_sb_resetcore(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_core, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call void @brcmf_chip_sb_coredisable(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %9 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = add i32 %8, 3992
  tail call void %12(ptr noundef %14, i32 noundef %15, i32 noundef 196609) #7
  %16 = load ptr, ptr %9, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %13, align 4
  %19 = tail call i32 %17(ptr noundef %18, i32 noundef %15) #7
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #7
  %21 = load ptr, ptr %9, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %13, align 4
  %24 = add i32 %8, 3996
  %25 = tail call i32 %22(ptr noundef %23, i32 noundef %24) #7
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %13, align 4
  tail call void %31(ptr noundef %32, i32 noundef %24, i32 noundef 0) #7
  br label %33

33:                                               ; preds = %28, %4
  %34 = load ptr, ptr %9, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %13, align 4
  %37 = add i32 %8, 3984
  %38 = tail call i32 %35(ptr noundef %36, i32 noundef %37) #7
  %39 = and i32 %38, 393216
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = and i32 %38, -393217
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %13, align 4
  tail call void %45(ptr noundef %46, i32 noundef %37, i32 noundef %42) #7
  br label %47

47:                                               ; preds = %41, %33
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %13, align 4
  tail call void %50(ptr noundef %51, i32 noundef %15, i32 noundef 196608) #7
  %52 = load ptr, ptr %9, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %13, align 4
  %55 = tail call i32 %53(ptr noundef %54, i32 noundef %15) #7
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #7
  %57 = load ptr, ptr %9, align 4
  %58 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %13, align 4
  tail call void %59(ptr noundef %60, i32 noundef %15, i32 noundef 65536) #7
  %61 = load ptr, ptr %9, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %13, align 4
  %64 = tail call i32 %62(ptr noundef %63, i32 noundef %15) #7
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @brcmf_chip_ai_iscoreup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1032
  %12 = tail call i32 %6(ptr noundef %8, i32 noundef %11) #7
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 1
  %15 = load ptr, ptr %4, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = load i32, ptr %9, align 4
  %19 = add i32 %18, 2048
  %20 = tail call i32 %16(ptr noundef %17, i32 noundef %19) #7
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %14, i1 %22, i1 false
  ret i1 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_chip_ai_coredisable(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 2048
  %14 = tail call i32 %8(ptr noundef %10, i32 noundef %13) #7
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %3
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %9, align 4
  %22 = load i32, ptr %11, align 4
  %23 = add i32 %22, 1032
  %24 = or i32 %1, 3
  tail call void %20(ptr noundef %21, i32 noundef %23, i32 noundef %24) #7
  %25 = load ptr, ptr %6, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %9, align 4
  %28 = load i32, ptr %11, align 4
  %29 = add i32 %28, 1032
  %30 = tail call i32 %26(ptr noundef %27, i32 noundef %29) #7
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %9, align 4
  %35 = load i32, ptr %11, align 4
  %36 = add i32 %35, 2048
  tail call void %33(ptr noundef %34, i32 noundef %36, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %37 = load ptr, ptr %6, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %9, align 4
  %40 = load i32, ptr %11, align 4
  %41 = add i32 %40, 2048
  %42 = tail call i32 %38(ptr noundef %39, i32 noundef %41) #7
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %57, label %44

44:                                               ; preds = %44, %17
  %45 = phi i32 [ %47, %44 ], [ 309, %17 ]
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 2147480) #7
  %47 = add nsw i32 %45, -10
  %48 = load ptr, ptr %6, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %9, align 4
  %51 = load i32, ptr %11, align 4
  %52 = add i32 %51, 2048
  %53 = tail call i32 %49(ptr noundef %50, i32 noundef %52) #7
  %54 = icmp ne i32 %53, 1
  %55 = icmp ugt i32 %47, 9
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %44, label %57

57:                                               ; preds = %44, %17, %3
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %9, align 4
  %62 = load i32, ptr %11, align 4
  %63 = add i32 %62, 1032
  %64 = or i32 %2, 3
  tail call void %60(ptr noundef %61, i32 noundef %63, i32 noundef %64) #7
  %65 = load ptr, ptr %6, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %9, align 4
  %68 = load i32, ptr %11, align 4
  %69 = add i32 %68, 1032
  %70 = tail call i32 %66(ptr noundef %67, i32 noundef %69) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @brcmf_chip_ai_resetcore(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i16, ptr %0, align 4
  %8 = icmp eq i16 %7, 2066
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @brcmf_chip_ai_coredisable(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %32

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %27, label %14

14:                                               ; preds = %23, %10
  %15 = phi ptr [ %25, %23 ], [ %12, %10 ]
  %16 = phi i8 [ %24, %23 ], [ 1, %10 ]
  %17 = getelementptr i8, ptr %15, i32 -12
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 2066
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = add i8 %16, -1
  %22 = icmp eq i8 %16, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20, %14
  %24 = phi i8 [ %21, %20 ], [ %16, %14 ]
  %25 = load ptr, ptr %15, align 4
  %26 = icmp eq ptr %25, %11
  br i1 %26, label %27, label %14

27:                                               ; preds = %23, %10
  tail call void @brcmf_chip_ai_coredisable(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %32

28:                                               ; preds = %20
  %29 = getelementptr i8, ptr %15, i32 -12
  tail call void @brcmf_chip_ai_coredisable(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @brcmf_chip_ai_coredisable(ptr noundef nonnull %29, i32 noundef %1, i32 noundef %2)
  br label %32

32:                                               ; preds = %31, %28, %27, %9
  %33 = phi i1 [ true, %9 ], [ false, %31 ], [ true, %28 ], [ true, %27 ]
  %34 = phi ptr [ null, %9 ], [ %29, %31 ], [ null, %28 ], [ null, %27 ]
  %35 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %6, i32 0, i32 1
  %36 = getelementptr inbounds %struct.brcmf_chip_priv, ptr %6, i32 0, i32 2
  %37 = getelementptr inbounds %struct.brcmf_core_priv, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %35, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %36, align 4
  %41 = load i32, ptr %37, align 4
  %42 = add i32 %41, 2048
  %43 = tail call i32 %39(ptr noundef %40, i32 noundef %42) #7
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %55, %32
  %47 = phi i32 [ %56, %55 ], [ 0, %32 ]
  %48 = load ptr, ptr %35, align 4
  %49 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %36, align 4
  %52 = load i32, ptr %37, align 4
  %53 = add i32 %52, 2048
  tail call void %50(ptr noundef %51, i32 noundef %53, i32 noundef 0) #7
  %54 = icmp eq i32 %47, 50
  br i1 %54, label %65, label %55

55:                                               ; preds = %46
  %56 = add nuw nsw i32 %47, 1
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 60, i32 noundef 2) #7
  %57 = load ptr, ptr %35, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %36, align 4
  %60 = load i32, ptr %37, align 4
  %61 = add i32 %60, 2048
  %62 = tail call i32 %58(ptr noundef %59, i32 noundef %61) #7
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %46

65:                                               ; preds = %55, %46, %32
  br i1 %33, label %95, label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.brcmf_core_priv, ptr %34, i32 0, i32 1
  %68 = load ptr, ptr %35, align 4
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %36, align 4
  %71 = load i32, ptr %67, align 4
  %72 = add i32 %71, 2048
  %73 = tail call i32 %69(ptr noundef %70, i32 noundef %72) #7
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %85, %66
  %77 = phi i32 [ %86, %85 ], [ 0, %66 ]
  %78 = load ptr, ptr %35, align 4
  %79 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %36, align 4
  %82 = load i32, ptr %67, align 4
  %83 = add i32 %82, 2048
  tail call void %80(ptr noundef %81, i32 noundef %83, i32 noundef 0) #7
  %84 = icmp eq i32 %77, 50
  br i1 %84, label %95, label %85

85:                                               ; preds = %76
  %86 = add nuw nsw i32 %77, 1
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 60, i32 noundef 2) #7
  %87 = load ptr, ptr %35, align 4
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %36, align 4
  %90 = load i32, ptr %67, align 4
  %91 = add i32 %90, 2048
  %92 = tail call i32 %88(ptr noundef %89, i32 noundef %91) #7
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %76

95:                                               ; preds = %85, %76, %66, %65
  %96 = load ptr, ptr %35, align 4
  %97 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %36, align 4
  %100 = load i32, ptr %37, align 4
  %101 = add i32 %100, 1032
  %102 = or i32 %3, 1
  tail call void %98(ptr noundef %99, i32 noundef %101, i32 noundef %102) #7
  %103 = load ptr, ptr %35, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %36, align 4
  %106 = load i32, ptr %37, align 4
  %107 = add i32 %106, 1032
  %108 = tail call i32 %104(ptr noundef %105, i32 noundef %107) #7
  br i1 %33, label %123, label %109

109:                                              ; preds = %95
  %110 = load ptr, ptr %35, align 4
  %111 = getelementptr inbounds %struct.brcmf_buscore_ops, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %36, align 4
  %114 = getelementptr inbounds %struct.brcmf_core_priv, ptr %34, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1032
  tail call void %112(ptr noundef %113, i32 noundef %116, i32 noundef %102) #7
  %117 = load ptr, ptr %35, align 4
  %118 = load ptr, ptr %117, align 4
  %119 = load ptr, ptr %36, align 4
  %120 = load i32, ptr %114, align 4
  %121 = add i32 %120, 1032
  %122 = tail call i32 %118(ptr noundef %119, i32 noundef %121) #7
  br label %123

123:                                              ; preds = %109, %95
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
