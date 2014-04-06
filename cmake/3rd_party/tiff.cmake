
include_directories(
	src/tiff/libtiff
)

if( PLATFORM_UNIX OR PLATFORM_MACOSX )
	set(TIFF_PLATFORM_SRC src/tiff/libtiff/tif_unix.c)
elseif( PLATFORM_WIN32 )
	set(TIFF_PLATFORM_SRC src/tiff/libtiff/tif_win32.c)
endif()

#~         <include>$(INC_ZLIB)</include>
#~         <include>$(INC_JPEG)</include>
#~         <include>$(INC_TIFF_BUILD)</include>
#~         <include>$(INC_TIFF)</include>
#~             <define>_CRT_NONSTDC_NO_WARNINGS</define>


add_library( tiff STATIC

            ${TIFF_PLATFORM_SRC}
            src/tiff/libtiff/tif_aux.c
            src/tiff/libtiff/tif_close.c
            src/tiff/libtiff/tif_codec.c
            src/tiff/libtiff/tif_color.c
            src/tiff/libtiff/tif_compress.c
            src/tiff/libtiff/tif_dir.c
            src/tiff/libtiff/tif_dirinfo.c
            src/tiff/libtiff/tif_dirread.c
            src/tiff/libtiff/tif_dirwrite.c
            src/tiff/libtiff/tif_dumpmode.c
            src/tiff/libtiff/tif_error.c
            src/tiff/libtiff/tif_extension.c
            src/tiff/libtiff/tif_fax3.c
            src/tiff/libtiff/tif_fax3sm.c
            src/tiff/libtiff/tif_flush.c
            src/tiff/libtiff/tif_getimage.c
            src/tiff/libtiff/tif_jbig.c
            src/tiff/libtiff/tif_jpeg.c
            src/tiff/libtiff/tif_jpeg_12.c
            src/tiff/libtiff/tif_luv.c
            src/tiff/libtiff/tif_lzma.c
            src/tiff/libtiff/tif_lzw.c
            src/tiff/libtiff/tif_next.c
            src/tiff/libtiff/tif_ojpeg.c
            src/tiff/libtiff/tif_open.c
            src/tiff/libtiff/tif_packbits.c
            src/tiff/libtiff/tif_pixarlog.c
            src/tiff/libtiff/tif_predict.c
            src/tiff/libtiff/tif_print.c
            src/tiff/libtiff/tif_read.c
            src/tiff/libtiff/tif_strip.c
            src/tiff/libtiff/tif_swab.c
            src/tiff/libtiff/tif_thunder.c
            src/tiff/libtiff/tif_tile.c
            src/tiff/libtiff/tif_version.c
            src/tiff/libtiff/tif_warning.c
            src/tiff/libtiff/tif_write.c
            src/tiff/libtiff/tif_zip.c
)