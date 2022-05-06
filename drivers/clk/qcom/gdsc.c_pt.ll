; ModuleID = '/llk/IR/drivers/clk/qcom/gdsc.c_pt.bc'
source_filename = "../drivers/clk/qcom/gdsc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gdsc_gx_do_nothing_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22gdsc_gx_do_nothing_enable\22\09\09\09\09\09"
module asm "__kstrtabns_gdsc_gx_do_nothing_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gdsc_desc = type { ptr, ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.gdsc = type { %struct.generic_pm_domain, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i8, i16, ptr, ptr, i32, ptr, ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.65 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.65 = type { %struct.mutex }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }

@__kstrtab_gdsc_gx_do_nothing_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_gdsc_gx_do_nothing_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_gdsc_gx_do_nothing_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gdsc_gx_do_nothing_enable to i32), ptr @__kstrtab_gdsc_gx_do_nothing_enable, ptr @__kstrtabns_gdsc_gx_do_nothing_enable }, section "___ksymtab_gpl+gdsc_gx_do_nothing_enable", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [24 x i8] c"drivers/clk/qcom/gdsc.c\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s status stuck at 'o%s'\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_gdsc_gx_do_nothing_enable], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gdsc_register(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.gdsc_desc, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gdsc_desc, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 12, i32 noundef 3520) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %277, label %12

12:                                               ; preds = %3
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #5
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %12
  store ptr null, ptr %10, align 4
  br label %277

16:                                               ; preds = %12
  %17 = extractvalue { i32, i1 } %13, 0
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %17, i32 noundef 3520) #5
  store ptr %18, ptr %10, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %277, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.genpd_onecell_data, ptr %10, i32 0, i32 1
  store i32 %9, ptr %23, align 4
  br label %273

24:                                               ; preds = %43, %20
  %25 = phi i32 [ %44, %43 ], [ 0, %20 ]
  %26 = getelementptr ptr, ptr %7, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.gdsc, ptr %27, i32 0, i32 16
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @devm_regulator_get(ptr noundef %5, ptr noundef nonnull %31) #5
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr inbounds %struct.gdsc, ptr %35, i32 0, i32 17
  store ptr %34, ptr %36, align 4
  %37 = load ptr, ptr %26, align 4
  %38 = getelementptr inbounds %struct.gdsc, ptr %37, i32 0, i32 17
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = ptrtoint ptr %39 to i32
  br label %277

43:                                               ; preds = %33, %29, %24
  %44 = add nuw i32 %25, 1
  %45 = icmp eq i32 %44, %9
  br i1 %45, label %46, label %24

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.genpd_onecell_data, ptr %10, i32 0, i32 1
  store i32 %9, ptr %47, align 4
  br i1 %21, label %273, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 15
  br label %53

50:                                               ; preds = %248
  br i1 %21, label %273, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12
  br label %251

53:                                               ; preds = %248, %48
  %54 = phi i32 [ 0, %48 ], [ %249, %248 ]
  %55 = getelementptr ptr, ptr %7, i32 %54
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %248, label %58

58:                                               ; preds = %53
  %59 = load i16, ptr %49, align 8
  %60 = and i16 %59, 7
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.gdsc, ptr %56, i32 0, i32 18
  store ptr %5, ptr %63, align 8
  %64 = load ptr, ptr %55, align 4
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi ptr [ %64, %62 ], [ %56, %58 ]
  %67 = getelementptr inbounds %struct.gdsc, ptr %66, i32 0, i32 2
  store ptr %2, ptr %67, align 4
  %68 = load ptr, ptr %55, align 4
  %69 = getelementptr inbounds %struct.gdsc, ptr %68, i32 0, i32 13
  store ptr %1, ptr %69, align 4
  %70 = load ptr, ptr %55, align 4
  %71 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store i32 2, ptr %71, align 4
  br label %75

75:                                               ; preds = %74, %65
  %76 = phi i32 [ 2, %74 ], [ %72, %65 ]
  %77 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 9
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 8, ptr %77, align 8
  br label %81

81:                                               ; preds = %80, %75
  %82 = phi i32 [ 8, %80 ], [ %78, %75 ]
  %83 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 10
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 2, ptr %83, align 4
  br label %87

87:                                               ; preds = %86, %81
  %88 = phi i32 [ 2, %86 ], [ %84, %81 ]
  %89 = shl i32 %76, 20
  %90 = shl i32 %82, 16
  %91 = or i32 %90, %89
  %92 = shl i32 %88, 12
  %93 = or i32 %91, %92
  %94 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 3
  %97 = load i32, ptr %96, align 8
  %98 = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef %97, i32 noundef 16773126, i32 noundef %93, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %277

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 11
  %102 = load i8, ptr %101, align 8
  %103 = icmp eq i8 %102, 4
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = call fastcc i32 @gdsc_toggle_logic(ptr noundef %70, i32 noundef 1) #5
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %277

107:                                              ; preds = %104, %100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !9
  %108 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 12
  %109 = load i16, ptr %108, align 2
  %110 = and i16 %109, 32
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, ptr %96, align 8
  %114 = add i32 %113, 4
  br label %121

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, ptr %96, align 8
  br label %121

121:                                              ; preds = %119, %115, %112
  %122 = phi i32 [ %114, %112 ], [ %120, %119 ], [ %117, %115 ]
  %123 = load ptr, ptr %94, align 4
  %124 = call i32 @regmap_read(ptr noundef %123, i32 noundef %122, ptr noundef nonnull %4) #5
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load i16, ptr %108, align 2
  %128 = and i16 %127, 32
  %129 = icmp eq i16 %128, 0
  %130 = load i32, ptr %4, align 4
  %131 = lshr i32 %130, 16
  %132 = and i32 %131, 1
  %133 = lshr i32 %130, 31
  %134 = select i1 %129, i32 %133, i32 %132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %175, label %138

136:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %137 = icmp slt i32 %124, 0
  br i1 %137, label %277, label %138

138:                                              ; preds = %136, %126
  %139 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 17
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = call i32 @regulator_enable(ptr noundef nonnull %140) #5
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %277, label %145

145:                                              ; preds = %142, %138
  %146 = load i16, ptr %108, align 2
  %147 = and i16 %146, 1
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %94, align 4
  %151 = load i32, ptr %96, align 8
  %152 = call i32 @regmap_update_bits_base(ptr noundef %150, i32 noundef %151, i32 noundef 1, i32 noundef %93, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %277

154:                                              ; preds = %149
  %155 = load i16, ptr %108, align 2
  br label %156

156:                                              ; preds = %154, %145
  %157 = phi i16 [ %155, %154 ], [ %146, %145 ]
  %158 = and i16 %157, 4
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %94, align 4
  %162 = load i32, ptr %96, align 8
  %163 = call i32 @regmap_update_bits_base(ptr noundef %161, i32 noundef %162, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %277, label %165

165:                                              ; preds = %160
  %166 = load i16, ptr %108, align 2
  br label %167

167:                                              ; preds = %165, %156
  %168 = phi i16 [ %166, %165 ], [ %157, %156 ]
  %169 = and i16 %168, 128
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %184, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %94, align 4
  %173 = load i32, ptr %96, align 8
  %174 = call i32 @regmap_update_bits_base(ptr noundef %172, i32 noundef %173, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %184

175:                                              ; preds = %126
  %176 = and i16 %127, 64
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %175
  %179 = call i32 @gdsc_enable(ptr noundef %70) #5
  br label %184

180:                                              ; preds = %175
  %181 = load i8, ptr %101, align 8
  %182 = and i8 %181, 2
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %205, label %184

184:                                              ; preds = %180, %178, %171, %167
  %185 = phi i1 [ true, %180 ], [ false, %178 ], [ false, %167 ], [ false, %171 ]
  %186 = load i16, ptr %108, align 2
  %187 = and i16 %186, 256
  %188 = icmp eq i16 %187, 0
  %189 = select i1 %188, i32 24576, i32 16384
  %190 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 7
  %191 = load i32, ptr %190, align 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %224, label %193

193:                                              ; preds = %184
  %194 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 6
  br label %195

195:                                              ; preds = %195, %193
  %196 = phi i32 [ 0, %193 ], [ %202, %195 ]
  %197 = load ptr, ptr %94, align 4
  %198 = load ptr, ptr %194, align 4
  %199 = getelementptr i32, ptr %198, i32 %196
  %200 = load i32, ptr %199, align 4
  %201 = call i32 @regmap_update_bits_base(ptr noundef %197, i32 noundef %200, i32 noundef %189, i32 noundef %189, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %202 = add nuw i32 %196, 1
  %203 = load i32, ptr %190, align 8
  %204 = icmp ult i32 %202, %203
  br i1 %204, label %195, label %224

205:                                              ; preds = %180
  %206 = and i16 %127, 256
  %207 = icmp eq i16 %206, 0
  %208 = select i1 %207, i32 24576, i32 16384
  %209 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 7
  %210 = load i32, ptr %209, align 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %224, label %212

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.gdsc, ptr %70, i32 0, i32 6
  br label %214

214:                                              ; preds = %214, %212
  %215 = phi i32 [ 0, %212 ], [ %221, %214 ]
  %216 = load ptr, ptr %94, align 4
  %217 = load ptr, ptr %213, align 4
  %218 = getelementptr i32, ptr %217, i32 %215
  %219 = load i32, ptr %218, align 4
  %220 = call i32 @regmap_update_bits_base(ptr noundef %216, i32 noundef %219, i32 noundef %208, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %221 = add nuw i32 %215, 1
  %222 = load i32, ptr %209, align 8
  %223 = icmp ult i32 %221, %222
  br i1 %223, label %214, label %224

224:                                              ; preds = %214, %205, %195, %184
  %225 = phi i1 [ %185, %184 ], [ true, %205 ], [ true, %214 ], [ %185, %195 ]
  %226 = load i16, ptr %108, align 2
  %227 = and i16 %226, 64
  %228 = icmp eq i16 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.generic_pm_domain, ptr %70, i32 0, i32 32
  %231 = load i32, ptr %230, align 4
  %232 = or i32 %231, 4
  store i32 %232, ptr %230, align 4
  br label %233

233:                                              ; preds = %229, %224
  %234 = getelementptr inbounds %struct.generic_pm_domain, ptr %70, i32 0, i32 18
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store ptr @gdsc_disable, ptr %234, align 4
  br label %238

238:                                              ; preds = %237, %233
  %239 = getelementptr inbounds %struct.generic_pm_domain, ptr %70, i32 0, i32 19
  %240 = load ptr, ptr %239, align 8
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  store ptr @gdsc_enable, ptr %239, align 8
  br label %243

243:                                              ; preds = %242, %238
  %244 = call i32 @pm_genpd_init(ptr noundef %70, ptr noundef null, i1 noundef zeroext %225) #5
  %245 = load ptr, ptr %55, align 4
  %246 = load ptr, ptr %10, align 4
  %247 = getelementptr ptr, ptr %246, i32 %54
  store ptr %245, ptr %247, align 4
  br label %248

248:                                              ; preds = %243, %53
  %249 = add nuw i32 %54, 1
  %250 = icmp eq i32 %249, %9
  br i1 %250, label %50, label %53

251:                                              ; preds = %270, %51
  %252 = phi i32 [ 0, %51 ], [ %271, %270 ]
  %253 = getelementptr ptr, ptr %7, i32 %252
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %270, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.gdsc, ptr %254, i32 0, i32 1
  %258 = load ptr, ptr %257, align 8
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = call i32 @pm_genpd_add_subdomain(ptr noundef nonnull %258, ptr noundef nonnull %254) #5
  br label %270

262:                                              ; preds = %256
  %263 = load ptr, ptr %52, align 8
  %264 = icmp eq ptr %263, null
  %265 = icmp ugt ptr %263, inttoptr (i32 -4096 to ptr)
  %266 = or i1 %264, %265
  br i1 %266, label %270, label %267

267:                                              ; preds = %262
  %268 = getelementptr i8, ptr %263, i32 -472
  %269 = call i32 @pm_genpd_add_subdomain(ptr noundef %268, ptr noundef nonnull %254) #5
  br label %270

270:                                              ; preds = %267, %262, %260, %251
  %271 = add nuw i32 %252, 1
  %272 = icmp eq i32 %271, %9
  br i1 %272, label %273, label %251

273:                                              ; preds = %270, %50, %46, %22
  %274 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %275 = load ptr, ptr %274, align 8
  %276 = call i32 @of_genpd_add_provider_onecell(ptr noundef %275, ptr noundef nonnull %10) #5
  br label %277

277:                                              ; preds = %273, %160, %149, %142, %136, %104, %87, %41, %16, %15, %3
  %278 = phi i32 [ %42, %41 ], [ %276, %273 ], [ -12, %3 ], [ -12, %16 ], [ -12, %15 ], [ %98, %87 ], [ %105, %104 ], [ %124, %136 ], [ %143, %142 ], [ %152, %149 ], [ %163, %160 ]
  ret i32 %278
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gdsc_unregister(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.gdsc_desc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gdsc_desc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12
  br label %10

10:                                               ; preds = %29, %8
  %11 = phi i32 [ 0, %8 ], [ %30, %29 ]
  %12 = getelementptr ptr, ptr %4, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.gdsc, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @pm_genpd_remove_subdomain(ptr noundef nonnull %17, ptr noundef nonnull %13) #5
  br label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr %9, align 8
  %23 = icmp eq ptr %22, null
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %25 = or i1 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %22, i32 -472
  %28 = tail call i32 @pm_genpd_remove_subdomain(ptr noundef %27, ptr noundef nonnull %13) #5
  br label %29

29:                                               ; preds = %26, %21, %19, %10
  %30 = add nuw i32 %11, 1
  %31 = icmp eq i32 %30, %6
  br i1 %31, label %32, label %10

32:                                               ; preds = %29, %1
  %33 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %34 = load ptr, ptr %33, align 8
  tail call void @of_genpd_del_provider(ptr noundef %34) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @gdsc_gx_do_nothing_enable(ptr nocapture readnone %0) #3 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gdsc_toggle_logic(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, 1
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  br i1 %3, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @regulator_enable(ptr noundef nonnull %8) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %10, %6, %2
  %14 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef 1, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 12
  %22 = load i16, ptr %21, align 2
  %23 = and i16 %22, 1
  %24 = icmp ne i16 %23, 0
  %25 = icmp eq i32 %1, 0
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 107374000) #5
  br label %51

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #5
  br label %35

35:                                               ; preds = %33, %29
  %36 = tail call fastcc i32 @gdsc_poll_status(ptr noundef %0, i32 noundef %1)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !10

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.generic_pm_domain, ptr %0, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  %41 = select i1 %25, ptr @.str.3, ptr @.str.2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %40, ptr noundef nonnull %41) #5
  br label %42

42:                                               ; preds = %38, %35
  %43 = or i32 %36, %1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @regulator_disable(ptr noundef nonnull %47) #5
  br label %51

51:                                               ; preds = %49, %45, %42, %27, %13, %10
  %52 = phi i32 [ 0, %27 ], [ %11, %10 ], [ %18, %13 ], [ %50, %49 ], [ 0, %45 ], [ %36, %42 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gdsc_enable(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %3, i32 noundef 4) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #5, !srcloc !12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #5, !srcloc !13
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %160, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  br label %160

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 11
  %16 = load i8, ptr %15, align 8
  %17 = icmp eq i8 %16, 4
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 15
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %160, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 13
  %24 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 14
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i32 [ 0, %22 ], [ %35, %25 ]
  %27 = load ptr, ptr %23, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.reset_control_ops, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %24, align 8
  %32 = getelementptr i32, ptr %31, i32 %26
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 %30(ptr noundef %27, i32 noundef %33) #5
  %35 = add nuw i32 %26, 1
  %36 = load i32, ptr %19, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %25, label %160

38:                                               ; preds = %14
  %39 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 12
  %40 = load i16, ptr %39, align 2
  %41 = and i16 %40, 8
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %83, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 15
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 13
  %49 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 14
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi i32 [ 0, %47 ], [ %60, %50 ]
  %52 = load ptr, ptr %48, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.reset_control_ops, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %49, align 8
  %57 = getelementptr i32, ptr %56, i32 %51
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 %55(ptr noundef %52, i32 noundef %58) #5
  %60 = add nuw i32 %51, 1
  %61 = load i32, ptr %44, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %50, label %63

63:                                               ; preds = %50, %43
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #5
  %65 = load i32, ptr %44, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 13
  %69 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 14
  br label %70

70:                                               ; preds = %70, %67
  %71 = phi i32 [ 0, %67 ], [ %80, %70 ]
  %72 = load ptr, ptr %68, align 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.reset_control_ops, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %69, align 8
  %77 = getelementptr i32, ptr %76, i32 %71
  %78 = load i32, ptr %77, align 4
  %79 = tail call i32 %75(ptr noundef %72, i32 noundef %78) #5
  %80 = add nuw i32 %71, 1
  %81 = load i32, ptr %44, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %70, label %83

83:                                               ; preds = %70, %63, %38
  %84 = load i16, ptr %39, align 2
  %85 = zext i16 %84 to i32
  %86 = and i32 %85, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %83
  %89 = and i32 %85, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 5
  %95 = load i32, ptr %94, align 8
  %96 = tail call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef %95, i32 noundef 16, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748) #5
  %98 = load ptr, ptr %92, align 4
  %99 = load i32, ptr %94, align 8
  %100 = tail call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef %99, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %101

101:                                              ; preds = %91, %88
  %102 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 5
  %105 = load i32, ptr %104, align 8
  %106 = tail call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef %105, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %107

107:                                              ; preds = %101, %83
  %108 = tail call fastcc i32 @gdsc_toggle_logic(ptr noundef %0, i32 noundef 1) #5
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %160

110:                                              ; preds = %107
  %111 = load i8, ptr %15, align 8
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %135, label %114

114:                                              ; preds = %110
  %115 = load i16, ptr %39, align 2
  %116 = and i16 %115, 256
  %117 = icmp eq i16 %116, 0
  %118 = select i1 %117, i32 24576, i32 16384
  %119 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 7
  %120 = load i32, ptr %119, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %135, label %122

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 2
  %124 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 6
  br label %125

125:                                              ; preds = %125, %122
  %126 = phi i32 [ 0, %122 ], [ %132, %125 ]
  %127 = load ptr, ptr %123, align 4
  %128 = load ptr, ptr %124, align 4
  %129 = getelementptr i32, ptr %128, i32 %126
  %130 = load i32, ptr %129, align 4
  %131 = tail call i32 @regmap_update_bits_base(ptr noundef %127, i32 noundef %130, i32 noundef %118, i32 noundef %118, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %132 = add nuw i32 %126, 1
  %133 = load i32, ptr %119, align 8
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %125, label %135

135:                                              ; preds = %125, %114, %110
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748) #5
  %137 = load i16, ptr %39, align 2
  %138 = and i16 %137, 4
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 3
  %144 = load i32, ptr %143, align 8
  %145 = tail call i32 @regmap_update_bits_base(ptr noundef %142, i32 noundef %144, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %140
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748) #5
  %149 = load i16, ptr %39, align 2
  br label %150

150:                                              ; preds = %147, %135
  %151 = phi i16 [ %149, %147 ], [ %137, %135 ]
  %152 = and i16 %151, 128
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 2
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 3
  %158 = load i32, ptr %157, align 8
  %159 = tail call i32 @regmap_update_bits_base(ptr noundef %156, i32 noundef %158, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %160

160:                                              ; preds = %154, %150, %140, %107, %25, %18, %13, %8
  %161 = phi i32 [ %6, %8 ], [ %6, %13 ], [ %108, %107 ], [ %145, %140 ], [ 0, %154 ], [ 0, %150 ], [ 0, %18 ], [ 0, %25 ]
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gdsc_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 11
  %3 = load i8, ptr %2, align 8
  %4 = icmp eq i8 %3, 4
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %81, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 13
  %11 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 14
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i32 [ 0, %9 ], [ %22, %12 ]
  %14 = load ptr, ptr %10, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.reset_control_ops, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr i32, ptr %18, i32 %13
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 %17(ptr noundef %14, i32 noundef %20) #5
  %22 = add nuw i32 %13, 1
  %23 = load i32, ptr %6, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %12, label %81

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 12
  %27 = load i16, ptr %26, align 2
  %28 = and i16 %27, 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %34, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %81, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #5
  %39 = tail call fastcc i32 @gdsc_poll_status(ptr noundef %0, i32 noundef 1) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %37
  %42 = load i8, ptr %2, align 8
  br label %43

43:                                               ; preds = %41, %25
  %44 = phi i8 [ %42, %41 ], [ %3, %25 ]
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %43
  %48 = load i16, ptr %26, align 2
  %49 = and i16 %48, 256
  %50 = icmp eq i16 %49, 0
  %51 = select i1 %50, i32 24576, i32 16384
  %52 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 7
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 2
  %57 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 6
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi i32 [ 0, %55 ], [ %65, %58 ]
  %60 = load ptr, ptr %56, align 4
  %61 = load ptr, ptr %57, align 4
  %62 = getelementptr i32, ptr %61, i32 %59
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %63, i32 noundef %51, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %65 = add nuw i32 %59, 1
  %66 = load i32, ptr %52, align 8
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %58, label %68

68:                                               ; preds = %58, %47, %43
  %69 = tail call fastcc i32 @gdsc_toggle_logic(ptr noundef %0, i32 noundef 0) #5
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i16, ptr %26, align 2
  %73 = and i16 %72, 2
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 5
  %79 = load i32, ptr %78, align 8
  %80 = tail call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef %79, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %81

81:                                               ; preds = %75, %71, %68, %37, %30, %12, %5
  %82 = phi i32 [ %35, %30 ], [ %39, %37 ], [ %69, %68 ], [ 0, %75 ], [ 0, %71 ], [ 0, %5 ], [ 0, %12 ]
  %83 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 18
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %84, i32 noundef 4) #5
  br label %88

88:                                               ; preds = %86, %81
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gdsc_poll_status(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call i64 @ktime_get() #5
  %6 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 12
  %7 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.gdsc, ptr %0, i32 0, i32 4
  br label %10

10:                                               ; preds = %52, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !9
  %11 = load i16, ptr %6, align 2
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %8, align 8
  %16 = add i32 %15, 4
  br label %22

17:                                               ; preds = %10
  %18 = load i32, ptr %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, ptr %8, align 8
  br label %22

22:                                               ; preds = %20, %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %20 ], [ %18, %17 ]
  %24 = load ptr, ptr %7, align 4
  %25 = call i32 @regmap_read(ptr noundef %24, i32 noundef %23, ptr noundef nonnull %4) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i16, ptr %6, align 2
  %29 = and i16 %28, 32
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  switch i32 %1, label %48 [
    i32 1, label %32
    i32 0, label %36
  ]

32:                                               ; preds = %31
  %33 = load i32, ptr %4, align 4
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 1
  br label %49

36:                                               ; preds = %31
  %37 = load i32, ptr %4, align 4
  %38 = lshr i32 %37, 15
  %39 = and i32 %38, 1
  br label %49

40:                                               ; preds = %27
  switch i32 %1, label %48 [
    i32 1, label %41
    i32 0, label %44
  ]

41:                                               ; preds = %40
  %42 = load i32, ptr %4, align 4
  %43 = lshr i32 %42, 31
  br label %49

44:                                               ; preds = %40
  %45 = load i32, ptr %4, align 4
  %46 = xor i32 %45, -1
  %47 = lshr i32 %46, 31
  br label %49

48:                                               ; preds = %40, %31, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %109

49:                                               ; preds = %44, %41, %36, %32
  %50 = phi i32 [ %47, %44 ], [ %43, %41 ], [ %39, %36 ], [ %35, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %109

52:                                               ; preds = %49
  %53 = call i64 @ktime_get() #5
  %54 = sub i64 %53, %5
  %55 = call i64 @llvm.abs.i64(i64 %54, i1 false) #5
  %56 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %55, i32 0) #6, !srcloc !15
  %57 = extractvalue { i64, i32 } %56, 0
  %58 = extractvalue { i64, i32 } %56, 1
  %59 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %55, i64 %57, i32 %58) #6, !srcloc !16
  %60 = extractvalue { i64, i32 } %59, 0
  %61 = icmp slt i64 %54, 0
  %62 = lshr i64 %60, 9
  %63 = sub nsw i64 0, %62
  %64 = select i1 %61, i64 %63, i64 %62
  %65 = icmp slt i64 %64, 500
  br i1 %65, label %10, label %66

66:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !9
  %67 = load i16, ptr %6, align 2
  %68 = and i16 %67, 32
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %8, align 8
  %72 = add i32 %71, 4
  br label %78

73:                                               ; preds = %66
  %74 = load i32, ptr %9, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, ptr %8, align 8
  br label %78

78:                                               ; preds = %76, %73, %70
  %79 = phi i32 [ %72, %70 ], [ %77, %76 ], [ %74, %73 ]
  %80 = load ptr, ptr %7, align 4
  %81 = call i32 @regmap_read(ptr noundef %80, i32 noundef %79, ptr noundef nonnull %3) #5
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = load i16, ptr %6, align 2
  %85 = and i16 %84, 32
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  switch i32 %1, label %104 [
    i32 1, label %88
    i32 0, label %92
  ]

88:                                               ; preds = %87
  %89 = load i32, ptr %3, align 4
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 1
  br label %105

92:                                               ; preds = %87
  %93 = load i32, ptr %3, align 4
  %94 = lshr i32 %93, 15
  %95 = and i32 %94, 1
  br label %105

96:                                               ; preds = %83
  switch i32 %1, label %104 [
    i32 1, label %97
    i32 0, label %100
  ]

97:                                               ; preds = %96
  %98 = load i32, ptr %3, align 4
  %99 = lshr i32 %98, 31
  br label %105

100:                                              ; preds = %96
  %101 = load i32, ptr %3, align 4
  %102 = xor i32 %101, -1
  %103 = lshr i32 %102, 31
  br label %105

104:                                              ; preds = %96, %87, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %109

105:                                              ; preds = %100, %97, %92, %88
  %106 = phi i32 [ %103, %100 ], [ %99, %97 ], [ %95, %92 ], [ %91, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i32 -110, i32 0
  br label %109

109:                                              ; preds = %105, %104, %49, %48
  %110 = phi i32 [ 0, %48 ], [ 0, %104 ], [ %108, %105 ], [ 0, %49 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147876475}
!12 = !{i64 374785, i64 2147864756, i64 2147864782, i64 2147864829, i64 2147864851, i64 2147864879, i64 2147864899}
!13 = !{i64 361354, i64 361379, i64 361401, i64 361417, i64 361429, i64 361449, i64 361473, i64 361489, i64 361501}
!14 = !{i64 2147876601}
!15 = !{i64 788734, i64 788761, i64 788783, i64 788811}
!16 = !{i64 789142, i64 789169, i64 789202, i64 789223, i64 789250, i64 789276}
