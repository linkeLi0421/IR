; ModuleID = '/llk/IR/drivers/cpuidle/governors/menu.c_pt.bc'
source_filename = "../drivers/cpuidle/governors/menu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.menu_device = type { i32, i32, i64, i32, [12 x i32], [8 x i32], i32 }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpumask = type { [1 x i32] }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_menu__150_579_init_menu2 = internal global ptr @init_menu, section ".initcall2.init", align 4
@menu_governor = internal global %struct.cpuidle_governor { [16 x i8] c"menu\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, i32 20, ptr @menu_enable_device, ptr null, ptr @menu_select, ptr @menu_reflect }, align 4
@menu_devices = internal global %struct.menu_device zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_menu__150_579_init_menu2], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_menu() #0 section ".init.text" {
  %1 = tail call i32 @cpuidle_register_governor(ptr noundef nonnull @menu_governor) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @menu_enable_device(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.cpuidle_device, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @menu_devices to i32)
  %8 = inttoptr i32 %7 to ptr
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(104) %8, i8 0, i32 104, i1 false)
  %9 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 0
  store i32 8192, ptr %9, align 4
  %10 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 1
  store i32 8192, ptr %10, align 4
  %11 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 2
  store i32 8192, ptr %11, align 4
  %12 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 3
  store i32 8192, ptr %12, align 4
  %13 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 4
  store i32 8192, ptr %13, align 4
  %14 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 5
  store i32 8192, ptr %14, align 4
  %15 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 6
  store i32 8192, ptr %15, align 4
  %16 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 7
  store i32 8192, ptr %16, align 4
  %17 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 8
  store i32 8192, ptr %17, align 4
  %18 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 9
  store i32 8192, ptr %18, align 4
  %19 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 10
  store i32 8192, ptr %19, align 4
  %20 = getelementptr %struct.menu_device, ptr %8, i32 0, i32 4, i32 11
  store i32 8192, ptr %20, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @menu_select(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = alloca i64, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #6, !srcloc !9
  %8 = add i32 %7, ptrtoint (ptr @menu_devices to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.cpuidle_device, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i64 @cpuidle_governor_latency_req(i32 noundef %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !10
  %13 = load i32, ptr %9, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %96, label %15

15:                                               ; preds = %3
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #6, !srcloc !9
  %19 = add i32 %18, ptrtoint (ptr @menu_devices to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.cpuidle_device, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.menu_device, ptr %20, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.menu_device, ptr %20, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = icmp ugt i64 %28, 10000000
  br i1 %29, label %53, label %30

30:                                               ; preds = %26, %15
  %31 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %22, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load i8, ptr %1, align 8
  %37 = and i8 %36, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.menu_device, ptr %20, i32 0, i32 2
  %41 = load i64, ptr %40, align 8
  br label %53

42:                                               ; preds = %35, %30
  %43 = getelementptr inbounds %struct.cpuidle_device, ptr %1, i32 0, i32 4
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %22, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = shl i64 %46, 1
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = sub i64 %44, %46
  br label %53

51:                                               ; preds = %42
  %52 = lshr i64 %44, 1
  br label %53

53:                                               ; preds = %51, %49, %39, %26
  %54 = phi i64 [ %41, %39 ], [ %50, %49 ], [ %52, %51 ], [ 45000000, %26 ]
  %55 = getelementptr inbounds %struct.menu_device, ptr %20, i32 0, i32 2
  %56 = load i64, ptr %55, align 8
  %57 = tail call i64 @llvm.umin.i64(i64 %54, i64 %56) #8
  %58 = getelementptr inbounds %struct.menu_device, ptr %20, i32 0, i32 3
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr %struct.menu_device, ptr %20, i32 0, i32 4, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, 3
  %63 = sub i32 %61, %62
  %64 = icmp ne i64 %56, 0
  %65 = icmp ult i64 %57, 50000000
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = shl nuw nsw i64 %57, 10
  %69 = tail call i64 @div64_u64(i64 noundef %68, i64 noundef %56) #8
  %70 = trunc i64 %69 to i32
  %71 = load i32, ptr %58, align 8
  br label %72

72:                                               ; preds = %67, %53
  %73 = phi i32 [ %71, %67 ], [ %59, %53 ]
  %74 = phi i32 [ %70, %67 ], [ 1024, %53 ]
  %75 = add i32 %63, %74
  %76 = getelementptr %struct.menu_device, ptr %20, i32 0, i32 4, i32 %73
  store i32 %75, ptr %76, align 4
  %77 = tail call i64 @llvm.abs.i64(i64 %57, i1 false) #8
  %78 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %77, i32 0) #9, !srcloc !11
  %79 = extractvalue { i64, i32 } %78, 0
  %80 = extractvalue { i64, i32 } %78, 1
  %81 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %77, i64 %79, i32 %80) #9, !srcloc !12
  %82 = extractvalue { i64, i32 } %81, 0
  %83 = icmp slt i64 %57, 0
  %84 = lshr i64 %82, 9
  %85 = sub nsw i64 0, %84
  %86 = select i1 %83, i64 %85, i64 %84
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.menu_device, ptr %20, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 4
  %91 = getelementptr %struct.menu_device, ptr %20, i32 0, i32 5, i32 %89
  store i32 %87, ptr %91, align 4
  %92 = load i32, ptr %88, align 4
  %93 = icmp ugt i32 %92, 7
  br i1 %93, label %94, label %95

94:                                               ; preds = %72
  store i32 0, ptr %88, align 4
  br label %95

95:                                               ; preds = %94, %72
  store i32 0, ptr %9, align 8
  br label %96

96:                                               ; preds = %95, %3
  %97 = call i64 @tick_nohz_get_sleep_length(ptr noundef nonnull %4) #8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100, !prof !13

99:                                               ; preds = %96
  store i64 0, ptr %4, align 8
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi i64 [ 0, %99 ], [ %97, %96 ]
  %102 = getelementptr inbounds %struct.menu_device, ptr %9, i32 0, i32 2
  store i64 %101, ptr %102, align 8
  %103 = load i32, ptr %10, align 4
  %104 = call i32 @nr_iowait_cpu(i32 noundef %103) #8
  %105 = load i64, ptr %102, align 8
  %106 = icmp eq i32 %104, 0
  %107 = select i1 %106, i32 0, i32 6
  %108 = icmp ult i64 %105, 10000
  br i1 %108, label %127, label %109

109:                                              ; preds = %100
  %110 = icmp ult i64 %105, 100000
  br i1 %110, label %111, label %113

111:                                              ; preds = %109
  %112 = or i32 %107, 1
  br label %127

113:                                              ; preds = %109
  %114 = icmp ult i64 %105, 1000000
  br i1 %114, label %115, label %117

115:                                              ; preds = %113
  %116 = add nuw nsw i32 %107, 2
  br label %127

117:                                              ; preds = %113
  %118 = icmp ult i64 %105, 10000000
  br i1 %118, label %119, label %121

119:                                              ; preds = %117
  %120 = add nuw nsw i32 %107, 3
  br label %127

121:                                              ; preds = %117
  %122 = icmp ult i64 %105, 100000000
  br i1 %122, label %123, label %125

123:                                              ; preds = %121
  %124 = add nuw nsw i32 %107, 4
  br label %127

125:                                              ; preds = %121
  %126 = add nuw nsw i32 %107, 5
  br label %127

127:                                              ; preds = %125, %123, %119, %115, %111, %100
  %128 = phi i32 [ %112, %111 ], [ %116, %115 ], [ %120, %119 ], [ %124, %123 ], [ %126, %125 ], [ %107, %100 ]
  %129 = getelementptr inbounds %struct.menu_device, ptr %9, i32 0, i32 3
  store i32 %128, ptr %129, align 8
  %130 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 4
  %131 = load i32, ptr %130, align 8
  %132 = icmp slt i32 %131, 2
  %133 = icmp eq i64 %12, 0
  %134 = select i1 %132, i1 true, i1 %133, !prof !13
  br i1 %134, label %147, label %135, !prof !13

135:                                              ; preds = %127
  %136 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 1, i32 3
  %137 = load i64, ptr %136, align 8
  %138 = icmp ult i64 %105, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 1, i32 2
  %141 = load i64, ptr %140, align 8
  %142 = icmp slt i64 %12, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %139, %135
  %144 = getelementptr inbounds %struct.cpuidle_device, ptr %1, i32 0, i32 7
  %145 = load i64, ptr %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %143, %127
  %148 = getelementptr inbounds %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 0, i32 4
  %149 = load i32, ptr %148, align 8
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, ptr %2, align 1
  br label %478

153:                                              ; preds = %143, %139
  %154 = getelementptr %struct.menu_device, ptr %9, i32 0, i32 4, i32 %128
  %155 = load i32, ptr %154, align 4
  %156 = zext i32 %155 to i64
  %157 = mul i64 %105, %156
  %158 = add i64 %157, 4096000
  %159 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %158, i32 0) #9, !srcloc !11
  %160 = extractvalue { i64, i32 } %159, 0
  %161 = extractvalue { i64, i32 } %159, 1
  %162 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %158, i64 %160, i32 %161) #9, !srcloc !12
  %163 = extractvalue { i64, i32 } %162, 0
  %164 = lshr i64 %163, 22
  %165 = trunc i64 %164 to i32
  %166 = getelementptr %struct.menu_device, ptr %9, i32 0, i32 5, i32 0
  %167 = load i32, ptr %166, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr %struct.menu_device, ptr %9, i32 0, i32 5, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr %struct.menu_device, ptr %9, i32 0, i32 5, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr %struct.menu_device, ptr %9, i32 0, i32 5, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr %struct.menu_device, ptr %9, i32 0, i32 5, i32 4
  %179 = load i32, ptr %178, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr %struct.menu_device, ptr %9, i32 0, i32 5, i32 5
  %182 = load i32, ptr %181, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr %struct.menu_device, ptr %9, i32 0, i32 5, i32 6
  %185 = load i32, ptr %184, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr %struct.menu_device, ptr %9, i32 0, i32 5, i32 7
  %188 = load i32, ptr %187, align 4
  %189 = zext i32 %188 to i64
  br label %190

190:                                              ; preds = %365, %153
  %191 = phi i32 [ 2147483647, %153 ], [ %367, %365 ]
  %192 = icmp ugt i32 %167, %191
  br i1 %192, label %194, label %193

193:                                              ; preds = %190
  br label %194

194:                                              ; preds = %193, %190
  %195 = phi i32 [ -1, %190 ], [ %167, %193 ]
  %196 = phi i32 [ 0, %190 ], [ %167, %193 ]
  %197 = phi i64 [ 0, %190 ], [ %168, %193 ]
  %198 = phi i32 [ 0, %190 ], [ 1, %193 ]
  %199 = icmp ugt i32 %170, %191
  br i1 %199, label %205, label %200

200:                                              ; preds = %194
  %201 = add nuw nsw i64 %197, %171
  %202 = add nuw nsw i32 %198, 1
  %203 = call i32 @llvm.umax.i32(i32 %170, i32 %196) #8
  %204 = call i32 @llvm.umin.i32(i32 %170, i32 %195) #8
  br label %205

205:                                              ; preds = %200, %194
  %206 = phi i32 [ %195, %194 ], [ %204, %200 ]
  %207 = phi i32 [ %196, %194 ], [ %203, %200 ]
  %208 = phi i64 [ %197, %194 ], [ %201, %200 ]
  %209 = phi i32 [ %198, %194 ], [ %202, %200 ]
  %210 = icmp ugt i32 %173, %191
  br i1 %210, label %216, label %211

211:                                              ; preds = %205
  %212 = add nuw nsw i64 %208, %174
  %213 = add nuw nsw i32 %209, 1
  %214 = call i32 @llvm.umax.i32(i32 %173, i32 %207) #8
  %215 = call i32 @llvm.umin.i32(i32 %173, i32 %206) #8
  br label %216

216:                                              ; preds = %211, %205
  %217 = phi i32 [ %206, %205 ], [ %215, %211 ]
  %218 = phi i32 [ %207, %205 ], [ %214, %211 ]
  %219 = phi i64 [ %208, %205 ], [ %212, %211 ]
  %220 = phi i32 [ %209, %205 ], [ %213, %211 ]
  %221 = icmp ugt i32 %176, %191
  br i1 %221, label %227, label %222

222:                                              ; preds = %216
  %223 = add nuw nsw i64 %219, %177
  %224 = add nuw nsw i32 %220, 1
  %225 = call i32 @llvm.umax.i32(i32 %176, i32 %218) #8
  %226 = call i32 @llvm.umin.i32(i32 %176, i32 %217) #8
  br label %227

227:                                              ; preds = %222, %216
  %228 = phi i32 [ %217, %216 ], [ %226, %222 ]
  %229 = phi i32 [ %218, %216 ], [ %225, %222 ]
  %230 = phi i64 [ %219, %216 ], [ %223, %222 ]
  %231 = phi i32 [ %220, %216 ], [ %224, %222 ]
  %232 = icmp ugt i32 %179, %191
  br i1 %232, label %238, label %233

233:                                              ; preds = %227
  %234 = add nuw nsw i64 %230, %180
  %235 = add nuw nsw i32 %231, 1
  %236 = call i32 @llvm.umax.i32(i32 %179, i32 %229) #8
  %237 = call i32 @llvm.umin.i32(i32 %179, i32 %228) #8
  br label %238

238:                                              ; preds = %233, %227
  %239 = phi i32 [ %228, %227 ], [ %237, %233 ]
  %240 = phi i32 [ %229, %227 ], [ %236, %233 ]
  %241 = phi i64 [ %230, %227 ], [ %234, %233 ]
  %242 = phi i32 [ %231, %227 ], [ %235, %233 ]
  %243 = icmp ugt i32 %182, %191
  br i1 %243, label %249, label %244

244:                                              ; preds = %238
  %245 = add nuw nsw i64 %241, %183
  %246 = add nuw nsw i32 %242, 1
  %247 = call i32 @llvm.umax.i32(i32 %182, i32 %240) #8
  %248 = call i32 @llvm.umin.i32(i32 %182, i32 %239) #8
  br label %249

249:                                              ; preds = %244, %238
  %250 = phi i32 [ %239, %238 ], [ %248, %244 ]
  %251 = phi i32 [ %240, %238 ], [ %247, %244 ]
  %252 = phi i64 [ %241, %238 ], [ %245, %244 ]
  %253 = phi i32 [ %242, %238 ], [ %246, %244 ]
  %254 = icmp ugt i32 %185, %191
  br i1 %254, label %260, label %255

255:                                              ; preds = %249
  %256 = add nuw nsw i64 %252, %186
  %257 = add nuw nsw i32 %253, 1
  %258 = call i32 @llvm.umax.i32(i32 %185, i32 %251) #8
  %259 = call i32 @llvm.umin.i32(i32 %185, i32 %250) #8
  br label %260

260:                                              ; preds = %255, %249
  %261 = phi i32 [ %250, %249 ], [ %259, %255 ]
  %262 = phi i32 [ %251, %249 ], [ %258, %255 ]
  %263 = phi i64 [ %252, %249 ], [ %256, %255 ]
  %264 = phi i32 [ %253, %249 ], [ %257, %255 ]
  %265 = icmp ugt i32 %188, %191
  br i1 %265, label %271, label %266

266:                                              ; preds = %260
  %267 = add nuw nsw i64 %263, %189
  %268 = add nuw nsw i32 %264, 1
  %269 = call i32 @llvm.umax.i32(i32 %188, i32 %262) #8
  %270 = call i32 @llvm.umin.i32(i32 %188, i32 %261) #8
  br label %271

271:                                              ; preds = %266, %260
  %272 = phi i32 [ %261, %260 ], [ %270, %266 ]
  %273 = phi i32 [ %262, %260 ], [ %269, %266 ]
  %274 = phi i64 [ %263, %260 ], [ %267, %266 ]
  %275 = phi i32 [ %264, %260 ], [ %268, %266 ]
  %276 = icmp ult i32 %272, %165
  br i1 %276, label %277, label %368

277:                                              ; preds = %271
  %278 = icmp eq i32 %275, 8
  br i1 %278, label %279, label %282

279:                                              ; preds = %277
  %280 = lshr i64 %274, 3
  %281 = trunc i64 %280 to i32
  br label %291

282:                                              ; preds = %277
  %283 = icmp ult i64 %274, 4294967296
  br i1 %283, label %284, label %287, !prof !14

284:                                              ; preds = %282
  %285 = trunc i64 %274 to i32
  %286 = udiv i32 %285, %275
  br label %291

287:                                              ; preds = %282
  %288 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %275, i64 %274) #9, !srcloc !15
  %289 = extractvalue { i64, i64 } %288, 1
  %290 = trunc i64 %289 to i32
  br label %291

291:                                              ; preds = %287, %284, %279
  %292 = phi i32 [ %281, %279 ], [ %286, %284 ], [ %290, %287 ]
  %293 = zext i32 %292 to i64
  %294 = sub nsw i64 %168, %293
  %295 = mul i64 %294, %294
  %296 = select i1 %192, i64 0, i64 %295
  br i1 %199, label %301, label %297

297:                                              ; preds = %291
  %298 = sub nsw i64 %171, %293
  %299 = mul i64 %298, %298
  %300 = add i64 %296, %299
  br label %301

301:                                              ; preds = %297, %291
  %302 = phi i64 [ %296, %291 ], [ %300, %297 ]
  br i1 %210, label %307, label %303

303:                                              ; preds = %301
  %304 = sub nsw i64 %174, %293
  %305 = mul i64 %304, %304
  %306 = add i64 %302, %305
  br label %307

307:                                              ; preds = %303, %301
  %308 = phi i64 [ %302, %301 ], [ %306, %303 ]
  br i1 %221, label %313, label %309

309:                                              ; preds = %307
  %310 = sub nsw i64 %177, %293
  %311 = mul i64 %310, %310
  %312 = add i64 %308, %311
  br label %313

313:                                              ; preds = %309, %307
  %314 = phi i64 [ %308, %307 ], [ %312, %309 ]
  br i1 %232, label %319, label %315

315:                                              ; preds = %313
  %316 = sub nsw i64 %180, %293
  %317 = mul i64 %316, %316
  %318 = add i64 %314, %317
  br label %319

319:                                              ; preds = %315, %313
  %320 = phi i64 [ %314, %313 ], [ %318, %315 ]
  br i1 %243, label %325, label %321

321:                                              ; preds = %319
  %322 = sub nsw i64 %183, %293
  %323 = mul i64 %322, %322
  %324 = add i64 %320, %323
  br label %325

325:                                              ; preds = %321, %319
  %326 = phi i64 [ %320, %319 ], [ %324, %321 ]
  br i1 %254, label %331, label %327

327:                                              ; preds = %325
  %328 = sub nsw i64 %186, %293
  %329 = mul i64 %328, %328
  %330 = add i64 %326, %329
  br label %331

331:                                              ; preds = %327, %325
  %332 = phi i64 [ %326, %325 ], [ %330, %327 ]
  br i1 %265, label %337, label %333

333:                                              ; preds = %331
  %334 = sub nsw i64 %189, %293
  %335 = mul i64 %334, %334
  %336 = add i64 %332, %335
  br label %337

337:                                              ; preds = %333, %331
  %338 = phi i64 [ %332, %331 ], [ %336, %333 ]
  br i1 %278, label %339, label %341

339:                                              ; preds = %337
  %340 = lshr i64 %338, 3
  br label %350

341:                                              ; preds = %337
  %342 = icmp ult i64 %338, 4294967296
  br i1 %342, label %343, label %347, !prof !14

343:                                              ; preds = %341
  %344 = trunc i64 %338 to i32
  %345 = udiv i32 %344, %275
  %346 = zext i32 %345 to i64
  br label %353

347:                                              ; preds = %341
  %348 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %275, i64 %338) #9, !srcloc !15
  %349 = extractvalue { i64, i64 } %348, 1
  br label %350

350:                                              ; preds = %347, %339
  %351 = phi i64 [ %340, %339 ], [ %349, %347 ]
  %352 = icmp ult i64 %351, 512409557603043101
  br i1 %352, label %353, label %365, !prof !14

353:                                              ; preds = %350, %343
  %354 = phi i64 [ %346, %343 ], [ %351, %350 ]
  %355 = mul nuw i64 %293, %293
  %356 = mul nuw i64 %354, 36
  %357 = icmp ugt i64 %355, %356
  br i1 %357, label %358, label %363

358:                                              ; preds = %353
  %359 = icmp ugt i32 %275, 5
  %360 = icmp ult i64 %354, 401
  %361 = select i1 %359, i1 true, i1 %360
  %362 = select i1 %361, i32 %292, i32 -1
  br label %368

363:                                              ; preds = %353
  %364 = icmp ult i64 %354, 401
  br i1 %364, label %368, label %365

365:                                              ; preds = %363, %350
  %366 = icmp ult i32 %275, 7
  %367 = add i32 %273, -1
  br i1 %366, label %368, label %190

368:                                              ; preds = %365, %363, %358, %271
  %369 = phi i32 [ %362, %358 ], [ -1, %365 ], [ %292, %363 ], [ -1, %271 ]
  %370 = call i32 @llvm.umin.i32(i32 %369, i32 %165)
  %371 = zext i32 %370 to i64
  %372 = mul nuw nsw i64 %371, 1000
  %373 = call zeroext i1 @tick_nohz_tick_stopped() #8
  br i1 %373, label %374, label %378

374:                                              ; preds = %368
  %375 = icmp ult i64 %372, 10000000
  br i1 %375, label %376, label %384

376:                                              ; preds = %374
  %377 = load i64, ptr %102, align 8
  br label %384

378:                                              ; preds = %368
  %379 = mul i32 %104, 10
  %380 = or i32 %379, 1
  %381 = sext i32 %380 to i64
  %382 = call i64 @div64_u64(i64 noundef %372, i64 noundef %381) #8
  %383 = call i64 @llvm.umin.i64(i64 %12, i64 %382)
  br label %384

384:                                              ; preds = %378, %376, %374
  %385 = phi i64 [ %377, %376 ], [ %372, %374 ], [ %372, %378 ]
  %386 = phi i64 [ %12, %376 ], [ %12, %374 ], [ %383, %378 ]
  %387 = load i32, ptr %130, align 8
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %439

389:                                              ; preds = %430, %384
  %390 = phi i32 [ %431, %430 ], [ -1, %384 ]
  %391 = phi i32 [ %432, %430 ], [ 0, %384 ]
  %392 = getelementptr %struct.cpuidle_device, ptr %1, i32 0, i32 7, i32 %391
  %393 = load i64, ptr %392, align 8
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %430

395:                                              ; preds = %389
  %396 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %391, i32 3
  %397 = load i64, ptr %396, align 8
  %398 = icmp ugt i64 %397, %385
  br i1 %398, label %399, label %426

399:                                              ; preds = %395
  %400 = icmp eq i32 %390, -1
  %401 = select i1 %400, i32 %391, i32 %390
  %402 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %401, i32 4
  %403 = load i32, ptr %402, align 8
  %404 = and i32 %403, 1
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %413, label %406

406:                                              ; preds = %399
  %407 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %391, i32 2
  %408 = load i64, ptr %407, align 8
  %409 = icmp sgt i64 %408, %386
  br i1 %409, label %413, label %410

410:                                              ; preds = %406
  %411 = load i64, ptr %102, align 8
  %412 = icmp ugt i64 %397, %411
  br i1 %412, label %413, label %440

413:                                              ; preds = %410, %406, %399
  %414 = icmp ult i64 %385, 10000000
  br i1 %414, label %450, label %415

415:                                              ; preds = %413
  %416 = call zeroext i1 @tick_nohz_tick_stopped() #8
  %417 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %401, i32 3
  %418 = load i64, ptr %417, align 8
  br i1 %416, label %419, label %440

419:                                              ; preds = %415
  %420 = icmp slt i64 %418, 10000000
  br i1 %420, label %421, label %478

421:                                              ; preds = %419
  %422 = load i64, ptr %396, align 8
  %423 = load i64, ptr %4, align 8
  %424 = icmp sgt i64 %422, %423
  %425 = select i1 %424, i32 %401, i32 %391
  br label %478

426:                                              ; preds = %395
  %427 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %391, i32 2
  %428 = load i64, ptr %427, align 8
  %429 = icmp sgt i64 %428, %386
  br i1 %429, label %434, label %430

430:                                              ; preds = %426, %389
  %431 = phi i32 [ %390, %389 ], [ %391, %426 ]
  %432 = add nuw nsw i32 %391, 1
  %433 = icmp eq i32 %432, %387
  br i1 %433, label %437, label %389

434:                                              ; preds = %426
  %435 = icmp eq i32 %390, -1
  %436 = select i1 %435, i32 %391, i32 %390
  br label %440

437:                                              ; preds = %430
  %438 = icmp eq i32 %431, -1
  br i1 %438, label %439, label %440

439:                                              ; preds = %437, %384
  br label %440

440:                                              ; preds = %439, %437, %434, %415, %410
  %441 = phi i32 [ -1, %439 ], [ %431, %437 ], [ %436, %434 ], [ %391, %410 ], [ %401, %415 ]
  %442 = phi i64 [ %385, %439 ], [ %385, %437 ], [ %385, %434 ], [ %397, %410 ], [ %418, %415 ]
  %443 = phi i32 [ 0, %439 ], [ %431, %437 ], [ %436, %434 ], [ %391, %410 ], [ %401, %415 ]
  %444 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %443, i32 4
  %445 = load i32, ptr %444, align 8
  %446 = and i32 %445, 1
  %447 = icmp ne i32 %446, 0
  %448 = icmp ult i64 %442, 10000000
  %449 = select i1 %447, i1 true, i1 %448
  br i1 %449, label %450, label %478

450:                                              ; preds = %440, %413
  %451 = phi i32 [ %443, %440 ], [ %401, %413 ]
  %452 = phi i32 [ %441, %440 ], [ %401, %413 ]
  %453 = call zeroext i1 @tick_nohz_tick_stopped() #8
  br i1 %453, label %478, label %454

454:                                              ; preds = %450
  store i8 0, ptr %2, align 1
  %455 = icmp sgt i32 %451, 0
  br i1 %455, label %456, label %478

456:                                              ; preds = %454
  %457 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %451, i32 3
  %458 = load i64, ptr %457, align 8
  %459 = load i64, ptr %4, align 8
  %460 = icmp sgt i64 %458, %459
  %461 = add i32 %452, -1
  %462 = icmp sgt i32 %461, -1
  %463 = select i1 %460, i1 %462, i1 false
  br i1 %463, label %464, label %478

464:                                              ; preds = %474, %456
  %465 = phi i32 [ %476, %474 ], [ %461, %456 ]
  %466 = phi i32 [ %475, %474 ], [ %452, %456 ]
  %467 = getelementptr %struct.cpuidle_device, ptr %1, i32 0, i32 7, i32 %465
  %468 = load i64, ptr %467, align 8
  %469 = icmp eq i64 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %464
  %471 = getelementptr %struct.cpuidle_driver, ptr %0, i32 0, i32 3, i32 %465, i32 3
  %472 = load i64, ptr %471, align 8
  %473 = icmp sgt i64 %472, %459
  br i1 %473, label %474, label %478

474:                                              ; preds = %470, %464
  %475 = phi i32 [ %466, %464 ], [ %465, %470 ]
  %476 = add i32 %465, -1
  %477 = icmp sgt i32 %476, -1
  br i1 %477, label %464, label %478

478:                                              ; preds = %474, %470, %456, %454, %450, %440, %421, %419, %147
  %479 = phi i32 [ 0, %147 ], [ %451, %450 ], [ %452, %456 ], [ %451, %454 ], [ %443, %440 ], [ %425, %421 ], [ %401, %419 ], [ %465, %470 ], [ %475, %474 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %479
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @menu_reflect(ptr nocapture noundef writeonly %0, i32 noundef %1) #3 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #6, !srcloc !9
  %6 = add i32 %5, ptrtoint (ptr @menu_devices to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 3
  store i32 %1, ptr %8, align 8
  store i32 1, ptr %7, align 8
  %9 = tail call zeroext i1 @tick_nohz_idle_got_tick() #8
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.menu_device, ptr %7, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cpuidle_governor_latency_req(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @tick_nohz_get_sleep_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_iowait_cpu(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_tick_stopped() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_idle_got_tick() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 340568}
!10 = !{!"auto-init"}
!11 = !{i64 856448, i64 856475, i64 856497, i64 856525}
!12 = !{i64 856856, i64 856883, i64 856916, i64 856937, i64 856964, i64 856990}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148341992, i64 2148342272, i64 2148342606, i64 2148342940}
