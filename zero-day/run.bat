
rem REM --disable-pixel-jitter 
rem --display-server localhost:14158 

rem REM PBRTv4 gbuffer{{"R", "G", "B"}, {"Albedo.R", "Albedo.G", "Albedo.B"}, {"Nsx", "Nsy", "Nsz"}}
rem imgtool denoise-optix cbox.exr --outfile denoised.exr


pbrt_v4_gpu --gpu  --disable-texture-filtering --seed 1387 --spp 1   	--outfile  ZeroDay_frame25_001spp_AOVs.exr   frame25.pbrt
pbrt_v4_gpu --gpu  --disable-texture-filtering --seed 1387 --spp 2   	--outfile  ZeroDay_frame25_002spp.exr   frame25.pbrt
pbrt_v4_gpu --gpu   --disable-texture-filtering --seed 1387 --spp 4   	--outfile  ZeroDay_frame25_004spp.exr   frame25.pbrt
pbrt_v4_gpu --gpu   --disable-texture-filtering --seed 1387 --spp 8   	--outfile  ZeroDay_frame25_008spp.exr   frame25.pbrt
pbrt_v4_gpu --gpu   --disable-texture-filtering --seed 1387 --spp 16  	--outfile  ZeroDay_frame25_016spp.exr   frame25.pbrt
pbrt_v4_gpu --gpu   --disable-texture-filtering --seed 1387 --spp 32  	--outfile  ZeroDay_frame25_032spp.exr   frame25.pbrt
pbrt_v4_gpu --gpu   --disable-texture-filtering --seed 1387 --spp 64  	--outfile  ZeroDay_frame25_064spp.exr   frame25.pbrt
pbrt_v4_gpu --gpu   --disable-texture-filtering --seed 1387 --spp 128 	--outfile  ZeroDay_frame25_128spp.exr   frame25.pbrt

pbrt_v4_gpu --gpu   --disable-texture-filtering --seed 1387 --spp 1   	--outfile  ZeroDay_frame35_032spp_AOVs.exr   frame35.pbrt
pbrt_v4_gpu --gpu   --disable-texture-filtering --seed 1387 --spp 1   	--outfile  ZeroDay_frame35_052spp_AOVs.exr   frame52.pbrt
pbrt_v4_gpu --gpu   --disable-texture-filtering --seed 1387 --spp 1   	--outfile  ZeroDay_frame35_085spp_AOVs.exr   frame85.pbrt
pbrt_v4_gpu --gpu   --disable-texture-filtering --seed 1387 --spp 1   	--outfile  ZeroDay_frame35_120spp_AOVs.exr   frame120.pbrt


pbrt_v4_gpu --gpu   --disable-texture-filtering --seed 1387 --spp 32000 	--outfile  ZeroDay_frame25_GT.exr   	frame25.pbrt