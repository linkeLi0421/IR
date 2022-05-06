; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/mmc_core.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/mmc_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stmmac_mmc_ops = type { ptr, ptr, ptr }
%struct.stmmac_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dwmac_mmc_ops = dso_local local_unnamed_addr constant %struct.stmmac_mmc_ops { ptr @dwmac_mmc_ctrl, ptr @dwmac_mmc_intr_all_mask, ptr @dwmac_mmc_read }, align 4
@dwxgmac_mmc_ops = dso_local local_unnamed_addr constant %struct.stmmac_mmc_ops { ptr @dwxgmac_mmc_ctrl, ptr @dwxgmac_mmc_intr_all_mask, ptr @dwxgmac_mmc_read }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac_mmc_ctrl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %4 = and i32 %1, 63
  %5 = or i32 %3, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %5) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac_mmc_intr_all_mask(ptr noundef %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !12
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr i8, ptr %0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 -1) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !13
  tail call void @arm_heavy_mb() #2
  %3 = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -1) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !14
  tail call void @arm_heavy_mb() #2
  %4 = getelementptr i8, ptr %0, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwmac_mmc_read(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !15
  %5 = load i32, ptr %1, align 4
  %6 = add i32 %5, %4
  store i32 %6, ptr %1, align 4
  %7 = getelementptr i8, ptr %0, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !16
  %9 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  store i32 %11, ptr %9, align 4
  %12 = getelementptr i8, ptr %0, i32 28
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !17
  %14 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = getelementptr i8, ptr %0, i32 32
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !18
  %19 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  store i32 %21, ptr %19, align 4
  %22 = getelementptr i8, ptr %0, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !19
  %24 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  store i32 %26, ptr %24, align 4
  %27 = getelementptr i8, ptr %0, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !20
  %29 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %28
  store i32 %31, ptr %29, align 4
  %32 = getelementptr i8, ptr %0, i32 44
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !21
  %34 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %33
  store i32 %36, ptr %34, align 4
  %37 = getelementptr i8, ptr %0, i32 48
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !22
  %39 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  store i32 %41, ptr %39, align 4
  %42 = getelementptr i8, ptr %0, i32 52
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !23
  %44 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  store i32 %46, ptr %44, align 4
  %47 = getelementptr i8, ptr %0, i32 56
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !24
  %49 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %48
  store i32 %51, ptr %49, align 4
  %52 = getelementptr i8, ptr %0, i32 60
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !25
  %54 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 10
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %53
  store i32 %56, ptr %54, align 4
  %57 = getelementptr i8, ptr %0, i32 64
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !26
  %59 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 11
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %58
  store i32 %61, ptr %59, align 4
  %62 = getelementptr i8, ptr %0, i32 68
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !27
  %64 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 12
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %63
  store i32 %66, ptr %64, align 4
  %67 = getelementptr i8, ptr %0, i32 72
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !28
  %69 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 13
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %68
  store i32 %71, ptr %69, align 4
  %72 = getelementptr i8, ptr %0, i32 76
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !29
  %74 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 14
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, %73
  store i32 %76, ptr %74, align 4
  %77 = getelementptr i8, ptr %0, i32 80
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !30
  %79 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 15
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, %78
  store i32 %81, ptr %79, align 4
  %82 = getelementptr i8, ptr %0, i32 84
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !31
  %84 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 16
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, %83
  store i32 %86, ptr %84, align 4
  %87 = getelementptr i8, ptr %0, i32 88
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !32
  %89 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 17
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %88
  store i32 %91, ptr %89, align 4
  %92 = getelementptr i8, ptr %0, i32 92
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !33
  %94 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 18
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, %93
  store i32 %96, ptr %94, align 4
  %97 = getelementptr i8, ptr %0, i32 96
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !34
  %99 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 19
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, %98
  store i32 %101, ptr %99, align 4
  %102 = getelementptr i8, ptr %0, i32 100
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !35
  %104 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 20
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, %103
  store i32 %106, ptr %104, align 4
  %107 = getelementptr i8, ptr %0, i32 104
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !36
  %109 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 21
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %108
  store i32 %111, ptr %109, align 4
  %112 = getelementptr i8, ptr %0, i32 108
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !37
  %114 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 22
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, %113
  store i32 %116, ptr %114, align 4
  %117 = getelementptr i8, ptr %0, i32 112
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !38
  %119 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 23
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, %118
  store i32 %121, ptr %119, align 4
  %122 = getelementptr i8, ptr %0, i32 116
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !39
  %124 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 24
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, %123
  store i32 %126, ptr %124, align 4
  %127 = getelementptr i8, ptr %0, i32 128
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !40
  %129 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 25
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, %128
  store i32 %131, ptr %129, align 4
  %132 = getelementptr i8, ptr %0, i32 132
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !41
  %134 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 26
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, %133
  store i32 %136, ptr %134, align 4
  %137 = getelementptr i8, ptr %0, i32 136
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !42
  %139 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 27
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, %138
  store i32 %141, ptr %139, align 4
  %142 = getelementptr i8, ptr %0, i32 140
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !43
  %144 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 28
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, %143
  store i32 %146, ptr %144, align 4
  %147 = getelementptr i8, ptr %0, i32 144
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %147) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !44
  %149 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 29
  %150 = load i32, ptr %149, align 4
  %151 = add i32 %150, %148
  store i32 %151, ptr %149, align 4
  %152 = getelementptr i8, ptr %0, i32 148
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !45
  %154 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 30
  %155 = load i32, ptr %154, align 4
  %156 = add i32 %155, %153
  store i32 %156, ptr %154, align 4
  %157 = getelementptr i8, ptr %0, i32 152
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !46
  %159 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 31
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, %158
  store i32 %161, ptr %159, align 4
  %162 = getelementptr i8, ptr %0, i32 156
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !47
  %164 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 32
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, %163
  store i32 %166, ptr %164, align 4
  %167 = getelementptr i8, ptr %0, i32 160
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !48
  %169 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 33
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, %168
  store i32 %171, ptr %169, align 4
  %172 = getelementptr i8, ptr %0, i32 164
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !49
  %174 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 34
  %175 = load i32, ptr %174, align 4
  %176 = add i32 %175, %173
  store i32 %176, ptr %174, align 4
  %177 = getelementptr i8, ptr %0, i32 168
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !50
  %179 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 35
  %180 = load i32, ptr %179, align 4
  %181 = add i32 %180, %178
  store i32 %181, ptr %179, align 4
  %182 = getelementptr i8, ptr %0, i32 172
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !51
  %184 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 36
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, %183
  store i32 %186, ptr %184, align 4
  %187 = getelementptr i8, ptr %0, i32 176
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !52
  %189 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 37
  %190 = load i32, ptr %189, align 4
  %191 = add i32 %190, %188
  store i32 %191, ptr %189, align 4
  %192 = getelementptr i8, ptr %0, i32 180
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !53
  %194 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 38
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, %193
  store i32 %196, ptr %194, align 4
  %197 = getelementptr i8, ptr %0, i32 184
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %197) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !54
  %199 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 39
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, %198
  store i32 %201, ptr %199, align 4
  %202 = getelementptr i8, ptr %0, i32 188
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !55
  %204 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 40
  %205 = load i32, ptr %204, align 4
  %206 = add i32 %205, %203
  store i32 %206, ptr %204, align 4
  %207 = getelementptr i8, ptr %0, i32 192
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %207) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !56
  %209 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 41
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %210, %208
  store i32 %211, ptr %209, align 4
  %212 = getelementptr i8, ptr %0, i32 196
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !57
  %214 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 42
  %215 = load i32, ptr %214, align 4
  %216 = add i32 %215, %213
  store i32 %216, ptr %214, align 4
  %217 = getelementptr i8, ptr %0, i32 200
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !58
  %219 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 43
  %220 = load i32, ptr %219, align 4
  %221 = add i32 %220, %218
  store i32 %221, ptr %219, align 4
  %222 = getelementptr i8, ptr %0, i32 204
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !59
  %224 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 44
  %225 = load i32, ptr %224, align 4
  %226 = add i32 %225, %223
  store i32 %226, ptr %224, align 4
  %227 = getelementptr i8, ptr %0, i32 208
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !60
  %229 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 45
  %230 = load i32, ptr %229, align 4
  %231 = add i32 %230, %228
  store i32 %231, ptr %229, align 4
  %232 = getelementptr i8, ptr %0, i32 212
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %232) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !61
  %234 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 46
  %235 = load i32, ptr %234, align 4
  %236 = add i32 %235, %233
  store i32 %236, ptr %234, align 4
  %237 = getelementptr i8, ptr %0, i32 216
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !62
  %239 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 47
  %240 = load i32, ptr %239, align 4
  %241 = add i32 %240, %238
  store i32 %241, ptr %239, align 4
  %242 = getelementptr i8, ptr %0, i32 220
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %242) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !63
  %244 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 48
  %245 = load i32, ptr %244, align 4
  %246 = add i32 %245, %243
  store i32 %246, ptr %244, align 4
  %247 = getelementptr i8, ptr %0, i32 256
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !64
  %249 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 49
  %250 = load i32, ptr %249, align 4
  %251 = add i32 %250, %248
  store i32 %251, ptr %249, align 4
  %252 = getelementptr i8, ptr %0, i32 264
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %252) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !65
  %254 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 50
  %255 = load i32, ptr %254, align 4
  %256 = add i32 %255, %253
  store i32 %256, ptr %254, align 4
  %257 = getelementptr i8, ptr %0, i32 272
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %257) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !66
  %259 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 51
  %260 = load i32, ptr %259, align 4
  %261 = add i32 %260, %258
  store i32 %261, ptr %259, align 4
  %262 = getelementptr i8, ptr %0, i32 276
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %262) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !67
  %264 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 52
  %265 = load i32, ptr %264, align 4
  %266 = add i32 %265, %263
  store i32 %266, ptr %264, align 4
  %267 = getelementptr i8, ptr %0, i32 280
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %267) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !68
  %269 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 53
  %270 = load i32, ptr %269, align 4
  %271 = add i32 %270, %268
  store i32 %271, ptr %269, align 4
  %272 = getelementptr i8, ptr %0, i32 284
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %272) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !69
  %274 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 54
  %275 = load i32, ptr %274, align 4
  %276 = add i32 %275, %273
  store i32 %276, ptr %274, align 4
  %277 = getelementptr i8, ptr %0, i32 288
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !70
  %279 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 55
  %280 = load i32, ptr %279, align 4
  %281 = add i32 %280, %278
  store i32 %281, ptr %279, align 4
  %282 = getelementptr i8, ptr %0, i32 336
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %282) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !71
  %284 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 56
  %285 = load i32, ptr %284, align 4
  %286 = add i32 %285, %283
  store i32 %286, ptr %284, align 4
  %287 = getelementptr i8, ptr %0, i32 340
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %287) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !72
  %289 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 57
  %290 = load i32, ptr %289, align 4
  %291 = add i32 %290, %288
  store i32 %291, ptr %289, align 4
  %292 = getelementptr i8, ptr %0, i32 344
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %292) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !73
  %294 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 58
  %295 = load i32, ptr %294, align 4
  %296 = add i32 %295, %293
  store i32 %296, ptr %294, align 4
  %297 = getelementptr i8, ptr %0, i32 348
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %297) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !74
  %299 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 59
  %300 = load i32, ptr %299, align 4
  %301 = add i32 %300, %298
  store i32 %301, ptr %299, align 4
  %302 = getelementptr i8, ptr %0, i32 352
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %302) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !75
  %304 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 60
  %305 = load i32, ptr %304, align 4
  %306 = add i32 %305, %303
  store i32 %306, ptr %304, align 4
  %307 = getelementptr i8, ptr %0, i32 356
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %307) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !76
  %309 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 61
  %310 = load i32, ptr %309, align 4
  %311 = add i32 %310, %308
  store i32 %311, ptr %309, align 4
  %312 = getelementptr i8, ptr %0, i32 360
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %312) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !77
  %314 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 62
  %315 = load i32, ptr %314, align 4
  %316 = add i32 %315, %313
  store i32 %316, ptr %314, align 4
  %317 = getelementptr i8, ptr %0, i32 364
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !78
  %319 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 63
  %320 = load i32, ptr %319, align 4
  %321 = add i32 %320, %318
  store i32 %321, ptr %319, align 4
  %322 = getelementptr i8, ptr %0, i32 292
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %322) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !79
  %324 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 64
  %325 = load i32, ptr %324, align 4
  %326 = add i32 %325, %323
  store i32 %326, ptr %324, align 4
  %327 = getelementptr i8, ptr %0, i32 296
  %328 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %327) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !80
  %329 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 65
  %330 = load i32, ptr %329, align 4
  %331 = add i32 %330, %328
  store i32 %331, ptr %329, align 4
  %332 = getelementptr i8, ptr %0, i32 300
  %333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %332) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !81
  %334 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 66
  %335 = load i32, ptr %334, align 4
  %336 = add i32 %335, %333
  store i32 %336, ptr %334, align 4
  %337 = getelementptr i8, ptr %0, i32 304
  %338 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %337) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !82
  %339 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 67
  %340 = load i32, ptr %339, align 4
  %341 = add i32 %340, %338
  store i32 %341, ptr %339, align 4
  %342 = getelementptr i8, ptr %0, i32 308
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %342) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !83
  %344 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 68
  %345 = load i32, ptr %344, align 4
  %346 = add i32 %345, %343
  store i32 %346, ptr %344, align 4
  %347 = getelementptr i8, ptr %0, i32 312
  %348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %347) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !84
  %349 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 69
  %350 = load i32, ptr %349, align 4
  %351 = add i32 %350, %348
  store i32 %351, ptr %349, align 4
  %352 = getelementptr i8, ptr %0, i32 316
  %353 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %352) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !85
  %354 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 70
  %355 = load i32, ptr %354, align 4
  %356 = add i32 %355, %353
  store i32 %356, ptr %354, align 4
  %357 = getelementptr i8, ptr %0, i32 320
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %357) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !86
  %359 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 71
  %360 = load i32, ptr %359, align 4
  %361 = add i32 %360, %358
  store i32 %361, ptr %359, align 4
  %362 = getelementptr i8, ptr %0, i32 324
  %363 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %362) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !87
  %364 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 72
  %365 = load i32, ptr %364, align 4
  %366 = add i32 %365, %363
  store i32 %366, ptr %364, align 4
  %367 = getelementptr i8, ptr %0, i32 368
  %368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %367) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !88
  %369 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 73
  %370 = load i32, ptr %369, align 4
  %371 = add i32 %370, %368
  store i32 %371, ptr %369, align 4
  %372 = getelementptr i8, ptr %0, i32 372
  %373 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %372) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !89
  %374 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 74
  %375 = load i32, ptr %374, align 4
  %376 = add i32 %375, %373
  store i32 %376, ptr %374, align 4
  %377 = getelementptr i8, ptr %0, i32 376
  %378 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %377) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !90
  %379 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 75
  %380 = load i32, ptr %379, align 4
  %381 = add i32 %380, %378
  store i32 %381, ptr %379, align 4
  %382 = getelementptr i8, ptr %0, i32 380
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %382) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !91
  %384 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 76
  %385 = load i32, ptr %384, align 4
  %386 = add i32 %385, %383
  store i32 %386, ptr %384, align 4
  %387 = getelementptr i8, ptr %0, i32 384
  %388 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %387) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !92
  %389 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 77
  %390 = load i32, ptr %389, align 4
  %391 = add i32 %390, %388
  store i32 %391, ptr %389, align 4
  %392 = getelementptr i8, ptr %0, i32 388
  %393 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %392) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !93
  %394 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 78
  %395 = load i32, ptr %394, align 4
  %396 = add i32 %395, %393
  store i32 %396, ptr %394, align 4
  %397 = getelementptr i8, ptr %0, i32 424
  %398 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %397) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !94
  %399 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 79
  %400 = load i32, ptr %399, align 4
  %401 = add i32 %400, %398
  store i32 %401, ptr %399, align 4
  %402 = getelementptr i8, ptr %0, i32 428
  %403 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %402) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !95
  %404 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 80
  %405 = load i32, ptr %404, align 4
  %406 = add i32 %405, %403
  store i32 %406, ptr %404, align 4
  %407 = getelementptr i8, ptr %0, i32 456
  %408 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %407) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !96
  %409 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 81
  %410 = load i32, ptr %409, align 4
  %411 = add i32 %410, %408
  store i32 %411, ptr %409, align 4
  %412 = getelementptr i8, ptr %0, i32 460
  %413 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %412) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !97
  %414 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 82
  %415 = load i32, ptr %414, align 4
  %416 = add i32 %415, %413
  store i32 %416, ptr %414, align 4
  %417 = getelementptr i8, ptr %0, i32 464
  %418 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %417) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !98
  %419 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 83
  %420 = load i32, ptr %419, align 4
  %421 = add i32 %420, %418
  store i32 %421, ptr %419, align 4
  %422 = getelementptr i8, ptr %0, i32 468
  %423 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %422) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !99
  %424 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 84
  %425 = load i32, ptr %424, align 4
  %426 = add i32 %425, %423
  store i32 %426, ptr %424, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac_mmc_ctrl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !100
  %4 = and i32 %1, 63
  %5 = or i32 %3, %4
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !101
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %5) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac_mmc_intr_all_mask(ptr noundef %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !102
  tail call void @arm_heavy_mb() #2
  %2 = getelementptr i8, ptr %0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !103
  tail call void @arm_heavy_mb() #2
  %3 = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #2, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !104
  tail call void @arm_heavy_mb() #2
  %4 = getelementptr i8, ptr %0, i32 604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1) #2, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwxgmac_mmc_read(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %5 = getelementptr i8, ptr %0, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4
  %10 = add i32 %9, %4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ -1, %2 ]
  store i32 %12, ptr %1, align 4
  %13 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 1
  %14 = getelementptr i8, ptr %0, i32 28
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %16 = getelementptr i8, ptr %0, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, ptr %13, align 4
  %21 = add i32 %20, %15
  br label %22

22:                                               ; preds = %19, %11
  %23 = phi i32 [ %21, %19 ], [ -1, %11 ]
  store i32 %23, ptr %13, align 4
  %24 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 2
  %25 = getelementptr i8, ptr %0, i32 36
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %27 = getelementptr i8, ptr %0, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, ptr %24, align 4
  %32 = add i32 %31, %26
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi i32 [ %32, %30 ], [ -1, %22 ]
  store i32 %34, ptr %24, align 4
  %35 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 3
  %36 = getelementptr i8, ptr %0, i32 44
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %38 = getelementptr i8, ptr %0, i32 48
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, ptr %35, align 4
  %43 = add i32 %42, %37
  br label %44

44:                                               ; preds = %41, %33
  %45 = phi i32 [ %43, %41 ], [ -1, %33 ]
  store i32 %45, ptr %35, align 4
  %46 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 4
  %47 = getelementptr i8, ptr %0, i32 52
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %49 = getelementptr i8, ptr %0, i32 56
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, ptr %46, align 4
  %54 = add i32 %53, %48
  br label %55

55:                                               ; preds = %52, %44
  %56 = phi i32 [ %54, %52 ], [ -1, %44 ]
  store i32 %56, ptr %46, align 4
  %57 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 5
  %58 = getelementptr i8, ptr %0, i32 60
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %60 = getelementptr i8, ptr %0, i32 64
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, ptr %57, align 4
  %65 = add i32 %64, %59
  br label %66

66:                                               ; preds = %63, %55
  %67 = phi i32 [ %65, %63 ], [ -1, %55 ]
  store i32 %67, ptr %57, align 4
  %68 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 6
  %69 = getelementptr i8, ptr %0, i32 68
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %71 = getelementptr i8, ptr %0, i32 72
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, ptr %68, align 4
  %76 = add i32 %75, %70
  br label %77

77:                                               ; preds = %74, %66
  %78 = phi i32 [ %76, %74 ], [ -1, %66 ]
  store i32 %78, ptr %68, align 4
  %79 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 7
  %80 = getelementptr i8, ptr %0, i32 76
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %82 = getelementptr i8, ptr %0, i32 80
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, ptr %79, align 4
  %87 = add i32 %86, %81
  br label %88

88:                                               ; preds = %85, %77
  %89 = phi i32 [ %87, %85 ], [ -1, %77 ]
  store i32 %89, ptr %79, align 4
  %90 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 8
  %91 = getelementptr i8, ptr %0, i32 84
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %93 = getelementptr i8, ptr %0, i32 88
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i32, ptr %90, align 4
  %98 = add i32 %97, %92
  br label %99

99:                                               ; preds = %96, %88
  %100 = phi i32 [ %98, %96 ], [ -1, %88 ]
  store i32 %100, ptr %90, align 4
  %101 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 9
  %102 = getelementptr i8, ptr %0, i32 92
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %104 = getelementptr i8, ptr %0, i32 96
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, ptr %101, align 4
  %109 = add i32 %108, %103
  br label %110

110:                                              ; preds = %107, %99
  %111 = phi i32 [ %109, %107 ], [ -1, %99 ]
  store i32 %111, ptr %101, align 4
  %112 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 10
  %113 = getelementptr i8, ptr %0, i32 100
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %115 = getelementptr i8, ptr %0, i32 104
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i32, ptr %112, align 4
  %120 = add i32 %119, %114
  br label %121

121:                                              ; preds = %118, %110
  %122 = phi i32 [ %120, %118 ], [ -1, %110 ]
  store i32 %122, ptr %112, align 4
  %123 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 11
  %124 = getelementptr i8, ptr %0, i32 108
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %126 = getelementptr i8, ptr %0, i32 112
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i32, ptr %123, align 4
  %131 = add i32 %130, %125
  br label %132

132:                                              ; preds = %129, %121
  %133 = phi i32 [ %131, %129 ], [ -1, %121 ]
  store i32 %133, ptr %123, align 4
  %134 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 12
  %135 = getelementptr i8, ptr %0, i32 116
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %137 = getelementptr i8, ptr %0, i32 120
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = load i32, ptr %134, align 4
  %142 = add i32 %141, %136
  br label %143

143:                                              ; preds = %140, %132
  %144 = phi i32 [ %142, %140 ], [ -1, %132 ]
  store i32 %144, ptr %134, align 4
  %145 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 13
  %146 = getelementptr i8, ptr %0, i32 124
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %148 = getelementptr i8, ptr %0, i32 128
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load i32, ptr %145, align 4
  %153 = add i32 %152, %147
  br label %154

154:                                              ; preds = %151, %143
  %155 = phi i32 [ %153, %151 ], [ -1, %143 ]
  store i32 %155, ptr %145, align 4
  %156 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 20
  %157 = getelementptr i8, ptr %0, i32 132
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %157) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %159 = getelementptr i8, ptr %0, i32 136
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = load i32, ptr %156, align 4
  %164 = add i32 %163, %158
  br label %165

165:                                              ; preds = %162, %154
  %166 = phi i32 [ %164, %162 ], [ -1, %154 ]
  store i32 %166, ptr %156, align 4
  %167 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 21
  %168 = getelementptr i8, ptr %0, i32 140
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %170 = getelementptr i8, ptr %0, i32 144
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load i32, ptr %167, align 4
  %175 = add i32 %174, %169
  br label %176

176:                                              ; preds = %173, %165
  %177 = phi i32 [ %175, %173 ], [ -1, %165 ]
  store i32 %177, ptr %167, align 4
  %178 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 23
  %179 = getelementptr i8, ptr %0, i32 148
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %181 = getelementptr i8, ptr %0, i32 152
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load i32, ptr %178, align 4
  %186 = add i32 %185, %180
  br label %187

187:                                              ; preds = %184, %176
  %188 = phi i32 [ %186, %184 ], [ -1, %176 ]
  store i32 %188, ptr %178, align 4
  %189 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 24
  %190 = getelementptr i8, ptr %0, i32 156
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %192 = getelementptr i8, ptr %0, i32 160
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %187
  %196 = load i32, ptr %189, align 4
  %197 = add i32 %196, %191
  br label %198

198:                                              ; preds = %195, %187
  %199 = phi i32 [ %197, %195 ], [ -1, %187 ]
  store i32 %199, ptr %189, align 4
  %200 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 25
  %201 = getelementptr i8, ptr %0, i32 256
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %203 = getelementptr i8, ptr %0, i32 260
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %198
  %207 = load i32, ptr %200, align 4
  %208 = add i32 %207, %202
  br label %209

209:                                              ; preds = %206, %198
  %210 = phi i32 [ %208, %206 ], [ -1, %198 ]
  store i32 %210, ptr %200, align 4
  %211 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 26
  %212 = getelementptr i8, ptr %0, i32 264
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %214 = getelementptr i8, ptr %0, i32 268
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %209
  %218 = load i32, ptr %211, align 4
  %219 = add i32 %218, %213
  br label %220

220:                                              ; preds = %217, %209
  %221 = phi i32 [ %219, %217 ], [ -1, %209 ]
  store i32 %221, ptr %211, align 4
  %222 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 27
  %223 = getelementptr i8, ptr %0, i32 272
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %225 = getelementptr i8, ptr %0, i32 276
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %220
  %229 = load i32, ptr %222, align 4
  %230 = add i32 %229, %224
  br label %231

231:                                              ; preds = %228, %220
  %232 = phi i32 [ %230, %228 ], [ -1, %220 ]
  store i32 %232, ptr %222, align 4
  %233 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 28
  %234 = getelementptr i8, ptr %0, i32 280
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %236 = getelementptr i8, ptr %0, i32 284
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %231
  %240 = load i32, ptr %233, align 4
  %241 = add i32 %240, %235
  br label %242

242:                                              ; preds = %239, %231
  %243 = phi i32 [ %241, %239 ], [ -1, %231 ]
  store i32 %243, ptr %233, align 4
  %244 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 29
  %245 = getelementptr i8, ptr %0, i32 288
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %245) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %247 = getelementptr i8, ptr %0, i32 292
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %242
  %251 = load i32, ptr %244, align 4
  %252 = add i32 %251, %246
  br label %253

253:                                              ; preds = %250, %242
  %254 = phi i32 [ %252, %250 ], [ -1, %242 ]
  store i32 %254, ptr %244, align 4
  %255 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 30
  %256 = getelementptr i8, ptr %0, i32 296
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %256) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %258 = getelementptr i8, ptr %0, i32 300
  %259 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %253
  %262 = load i32, ptr %255, align 4
  %263 = add i32 %262, %257
  br label %264

264:                                              ; preds = %261, %253
  %265 = phi i32 [ %263, %261 ], [ -1, %253 ]
  store i32 %265, ptr %255, align 4
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %256) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %258) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load i32, ptr %255, align 4
  %271 = add i32 %270, %266
  br label %272

272:                                              ; preds = %269, %264
  %273 = phi i32 [ %271, %269 ], [ -1, %264 ]
  store i32 %273, ptr %255, align 4
  %274 = getelementptr i8, ptr %0, i32 304
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %274) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !107
  %276 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 32
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %277, %275
  store i32 %278, ptr %276, align 4
  %279 = getelementptr i8, ptr %0, i32 308
  %280 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %279) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !108
  %281 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 33
  %282 = load i32, ptr %281, align 4
  %283 = add i32 %282, %280
  store i32 %283, ptr %281, align 4
  %284 = getelementptr i8, ptr %0, i32 312
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !109
  %286 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 34
  %287 = load i32, ptr %286, align 4
  %288 = add i32 %287, %285
  store i32 %288, ptr %286, align 4
  %289 = getelementptr i8, ptr %0, i32 316
  %290 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %289) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !110
  %291 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 35
  %292 = load i32, ptr %291, align 4
  %293 = add i32 %292, %290
  store i32 %293, ptr %291, align 4
  %294 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 36
  %295 = getelementptr i8, ptr %0, i32 320
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %295) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %297 = getelementptr i8, ptr %0, i32 324
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %297) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %272
  %301 = load i32, ptr %294, align 4
  %302 = add i32 %301, %296
  br label %303

303:                                              ; preds = %300, %272
  %304 = phi i32 [ %302, %300 ], [ -1, %272 ]
  store i32 %304, ptr %294, align 4
  %305 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 37
  %306 = getelementptr i8, ptr %0, i32 328
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %306) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %308 = getelementptr i8, ptr %0, i32 332
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %308) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %303
  %312 = load i32, ptr %305, align 4
  %313 = add i32 %312, %307
  br label %314

314:                                              ; preds = %311, %303
  %315 = phi i32 [ %313, %311 ], [ -1, %303 ]
  store i32 %315, ptr %305, align 4
  %316 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 38
  %317 = getelementptr i8, ptr %0, i32 336
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %317) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %319 = getelementptr i8, ptr %0, i32 340
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %319) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %314
  %323 = load i32, ptr %316, align 4
  %324 = add i32 %323, %318
  br label %325

325:                                              ; preds = %322, %314
  %326 = phi i32 [ %324, %322 ], [ -1, %314 ]
  store i32 %326, ptr %316, align 4
  %327 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 39
  %328 = getelementptr i8, ptr %0, i32 344
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %328) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %330 = getelementptr i8, ptr %0, i32 348
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %330) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %325
  %334 = load i32, ptr %327, align 4
  %335 = add i32 %334, %329
  br label %336

336:                                              ; preds = %333, %325
  %337 = phi i32 [ %335, %333 ], [ -1, %325 ]
  store i32 %337, ptr %327, align 4
  %338 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 40
  %339 = getelementptr i8, ptr %0, i32 352
  %340 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %339) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %341 = getelementptr i8, ptr %0, i32 356
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %341) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %336
  %345 = load i32, ptr %338, align 4
  %346 = add i32 %345, %340
  br label %347

347:                                              ; preds = %344, %336
  %348 = phi i32 [ %346, %344 ], [ -1, %336 ]
  store i32 %348, ptr %338, align 4
  %349 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 41
  %350 = getelementptr i8, ptr %0, i32 360
  %351 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %350) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %352 = getelementptr i8, ptr %0, i32 364
  %353 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %352) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %347
  %356 = load i32, ptr %349, align 4
  %357 = add i32 %356, %351
  br label %358

358:                                              ; preds = %355, %347
  %359 = phi i32 [ %357, %355 ], [ -1, %347 ]
  store i32 %359, ptr %349, align 4
  %360 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 42
  %361 = getelementptr i8, ptr %0, i32 368
  %362 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %361) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %363 = getelementptr i8, ptr %0, i32 372
  %364 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %363) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %358
  %367 = load i32, ptr %360, align 4
  %368 = add i32 %367, %362
  br label %369

369:                                              ; preds = %366, %358
  %370 = phi i32 [ %368, %366 ], [ -1, %358 ]
  store i32 %370, ptr %360, align 4
  %371 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 43
  %372 = getelementptr i8, ptr %0, i32 376
  %373 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %372) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %374 = getelementptr i8, ptr %0, i32 380
  %375 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %374) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %369
  %378 = load i32, ptr %371, align 4
  %379 = add i32 %378, %373
  br label %380

380:                                              ; preds = %377, %369
  %381 = phi i32 [ %379, %377 ], [ -1, %369 ]
  store i32 %381, ptr %371, align 4
  %382 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 44
  %383 = getelementptr i8, ptr %0, i32 384
  %384 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %383) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %385 = getelementptr i8, ptr %0, i32 388
  %386 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %385) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %380
  %389 = load i32, ptr %382, align 4
  %390 = add i32 %389, %384
  br label %391

391:                                              ; preds = %388, %380
  %392 = phi i32 [ %390, %388 ], [ -1, %380 ]
  store i32 %392, ptr %382, align 4
  %393 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 45
  %394 = getelementptr i8, ptr %0, i32 392
  %395 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %394) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %396 = getelementptr i8, ptr %0, i32 396
  %397 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %396) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %391
  %400 = load i32, ptr %393, align 4
  %401 = add i32 %400, %395
  br label %402

402:                                              ; preds = %399, %391
  %403 = phi i32 [ %401, %399 ], [ -1, %391 ]
  store i32 %403, ptr %393, align 4
  %404 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 46
  %405 = getelementptr i8, ptr %0, i32 400
  %406 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %405) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %407 = getelementptr i8, ptr %0, i32 404
  %408 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %407) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %402
  %411 = load i32, ptr %404, align 4
  %412 = add i32 %411, %406
  br label %413

413:                                              ; preds = %410, %402
  %414 = phi i32 [ %412, %410 ], [ -1, %402 ]
  store i32 %414, ptr %404, align 4
  %415 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 47
  %416 = getelementptr i8, ptr %0, i32 408
  %417 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %416) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !105
  %418 = getelementptr i8, ptr %0, i32 412
  %419 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %418) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !106
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %424

421:                                              ; preds = %413
  %422 = load i32, ptr %415, align 4
  %423 = add i32 %422, %417
  br label %424

424:                                              ; preds = %421, %413
  %425 = phi i32 [ %423, %421 ], [ -1, %413 ]
  store i32 %425, ptr %415, align 4
  %426 = getelementptr i8, ptr %0, i32 416
  %427 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %426) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !111
  %428 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 48
  %429 = load i32, ptr %428, align 4
  %430 = add i32 %429, %427
  store i32 %430, ptr %428, align 4
  %431 = getelementptr i8, ptr %0, i32 520
  %432 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %431) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !112
  %433 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 79
  %434 = load i32, ptr %433, align 4
  %435 = add i32 %434, %432
  store i32 %435, ptr %433, align 4
  %436 = getelementptr i8, ptr %0, i32 524
  %437 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %436) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !113
  %438 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 80
  %439 = load i32, ptr %438, align 4
  %440 = add i32 %439, %437
  store i32 %440, ptr %438, align 4
  %441 = getelementptr i8, ptr %0, i32 552
  %442 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %441) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !114
  %443 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 81
  %444 = load i32, ptr %443, align 4
  %445 = add i32 %444, %442
  store i32 %445, ptr %443, align 4
  %446 = getelementptr i8, ptr %0, i32 556
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %446) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !115
  %448 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 82
  %449 = load i32, ptr %448, align 4
  %450 = add i32 %449, %447
  store i32 %450, ptr %448, align 4
  %451 = getelementptr i8, ptr %0, i32 560
  %452 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %451) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !116
  %453 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 83
  %454 = load i32, ptr %453, align 4
  %455 = add i32 %454, %452
  store i32 %455, ptr %453, align 4
  %456 = getelementptr i8, ptr %0, i32 564
  %457 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %456) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !117
  %458 = getelementptr inbounds %struct.stmmac_counters, ptr %1, i32 0, i32 84
  %459 = load i32, ptr %458, align 4
  %460 = add i32 %459, %457
  store i32 %460, ptr %458, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 962229}
!9 = !{i64 2155088021}
!10 = !{i64 2155088210}
!11 = !{i64 961811}
!12 = !{i64 2155089291}
!13 = !{i64 2155089636}
!14 = !{i64 2155089983}
!15 = !{i64 2155090454}
!16 = !{i64 2155090784}
!17 = !{i64 2155091114}
!18 = !{i64 2155091444}
!19 = !{i64 2155091774}
!20 = !{i64 2155092104}
!21 = !{i64 2155092434}
!22 = !{i64 2155092764}
!23 = !{i64 2155093094}
!24 = !{i64 2155093424}
!25 = !{i64 2155093754}
!26 = !{i64 2155094084}
!27 = !{i64 2155094414}
!28 = !{i64 2155094744}
!29 = !{i64 2155095074}
!30 = !{i64 2155095404}
!31 = !{i64 2155095734}
!32 = !{i64 2155096064}
!33 = !{i64 2155096394}
!34 = !{i64 2155096724}
!35 = !{i64 2155097054}
!36 = !{i64 2155097384}
!37 = !{i64 2155097714}
!38 = !{i64 2155098044}
!39 = !{i64 2155098374}
!40 = !{i64 2155098704}
!41 = !{i64 2155099034}
!42 = !{i64 2155099364}
!43 = !{i64 2155099694}
!44 = !{i64 2155100024}
!45 = !{i64 2155100354}
!46 = !{i64 2155100684}
!47 = !{i64 2155101014}
!48 = !{i64 2155101344}
!49 = !{i64 2155101674}
!50 = !{i64 2155102004}
!51 = !{i64 2155102334}
!52 = !{i64 2155102664}
!53 = !{i64 2155102994}
!54 = !{i64 2155103324}
!55 = !{i64 2155103654}
!56 = !{i64 2155103984}
!57 = !{i64 2155104314}
!58 = !{i64 2155104644}
!59 = !{i64 2155104974}
!60 = !{i64 2155105304}
!61 = !{i64 2155105634}
!62 = !{i64 2155105964}
!63 = !{i64 2155106294}
!64 = !{i64 2155106628}
!65 = !{i64 2155106962}
!66 = !{i64 2155107296}
!67 = !{i64 2155107630}
!68 = !{i64 2155107964}
!69 = !{i64 2155108298}
!70 = !{i64 2155108632}
!71 = !{i64 2155108966}
!72 = !{i64 2155109300}
!73 = !{i64 2155109634}
!74 = !{i64 2155109968}
!75 = !{i64 2155110302}
!76 = !{i64 2155110636}
!77 = !{i64 2155110970}
!78 = !{i64 2155111304}
!79 = !{i64 2155111638}
!80 = !{i64 2155111972}
!81 = !{i64 2155112306}
!82 = !{i64 2155112640}
!83 = !{i64 2155112974}
!84 = !{i64 2155113308}
!85 = !{i64 2155113642}
!86 = !{i64 2155113976}
!87 = !{i64 2155114310}
!88 = !{i64 2155114644}
!89 = !{i64 2155114978}
!90 = !{i64 2155115312}
!91 = !{i64 2155115646}
!92 = !{i64 2155115980}
!93 = !{i64 2155116314}
!94 = !{i64 2155116648}
!95 = !{i64 2155116982}
!96 = !{i64 2155117316}
!97 = !{i64 2155117650}
!98 = !{i64 2155117984}
!99 = !{i64 2155118318}
!100 = !{i64 2155118648}
!101 = !{i64 2155118837}
!102 = !{i64 2155119154}
!103 = !{i64 2155119467}
!104 = !{i64 2155119800}
!105 = !{i64 2155120254}
!106 = !{i64 2155120585}
!107 = !{i64 2155121719}
!108 = !{i64 2155122053}
!109 = !{i64 2155122387}
!110 = !{i64 2155122721}
!111 = !{i64 2155123127}
!112 = !{i64 2155123461}
!113 = !{i64 2155123795}
!114 = !{i64 2155124129}
!115 = !{i64 2155124463}
!116 = !{i64 2155124797}
!117 = !{i64 2155125131}
