LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := nginx
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_SRC_FILES :=	src/core/nginx.c \
			src/core/ngx_log.c \
			src/core/ngx_palloc.c \
			src/core/ngx_array.c \
			src/core/ngx_list.c \
			src/core/ngx_hash.c \
			src/core/ngx_buf.c \
			src/core/ngx_queue.c \
			src/core/ngx_output_chain.c \
			src/core/ngx_string.c \
			src/core/ngx_parse.c \
			src/core/ngx_inet.c \
			src/core/ngx_file.c \
			src/core/ngx_crc32.c \
			src/core/ngx_murmurhash.c \
			src/core/ngx_md5.c \
			src/core/ngx_rbtree.c \
			src/core/ngx_radix_tree.c \
			src/core/ngx_slab.c \
			src/core/ngx_times.c \
			src/core/ngx_shmtx.c \
			src/core/ngx_connection.c \
			src/core/ngx_cycle.c \
			src/core/ngx_spinlock.c \
			src/core/ngx_cpuinfo.c \
			src/core/ngx_conf_file.c \
			src/core/ngx_resolver.c \
			src/core/ngx_open_file_cache.c \
			src/core/ngx_crypt.c \
			src/core/ngx_proxy_protocol.c \
			src/core/ngx_syslog.c \
			src/event/ngx_event.c \
			src/event/ngx_event_timer.c \
			src/event/ngx_event_posted.c \
			src/event/ngx_event_busy_lock.c \
			src/event/ngx_event_accept.c \
			src/event/ngx_event_connect.c \
			src/event/ngx_event_pipe.c \
			src/os/unix/ngx_time.c \
			src/os/unix/ngx_errno.c \
			src/os/unix/ngx_alloc.c \
			src/os/unix/ngx_files.c \
			src/os/unix/ngx_socket.c \
			src/os/unix/ngx_recv.c \
			src/os/unix/ngx_readv_chain.c \
			src/os/unix/ngx_udp_recv.c \
			src/os/unix/ngx_send.c \
			src/os/unix/ngx_writev_chain.c \
			src/os/unix/ngx_channel.c \
			src/os/unix/ngx_shmem.c \
			src/os/unix/ngx_process.c \
			src/os/unix/ngx_daemon.c \
			src/os/unix/ngx_setaffinity.c \
			src/os/unix/ngx_setproctitle.c \
			src/os/unix/ngx_posix_init.c \
			src/os/unix/ngx_user.c \
			src/os/unix/ngx_process_cycle.c \
			src/os/unix/ngx_linux_init.c \
			src/event/modules/ngx_epoll_module.c \
			src/os/unix/ngx_linux_sendfile_chain.c \
			src/http/ngx_http.c \
			src/http/ngx_http_core_module.c \
			src/http/ngx_http_special_response.c \
			src/http/ngx_http_request.c \
			src/http/ngx_http_parse.c \
			src/http/ngx_http_header_filter_module.c \
			src/http/ngx_http_write_filter_module.c \
			src/http/ngx_http_copy_filter_module.c \
			src/http/modules/ngx_http_log_module.c \
			src/http/ngx_http_request_body.c \
			src/http/ngx_http_variables.c \
			src/http/ngx_http_script.c \
			src/http/ngx_http_upstream.c \
			src/http/ngx_http_upstream_round_robin.c \
			src/http/ngx_http_parse_time.c \
			src/http/modules/ngx_http_static_module.c \
			src/http/modules/ngx_http_index_module.c \
			src/http/modules/ngx_http_chunked_filter_module.c \
			src/http/modules/ngx_http_range_filter_module.c \
			src/http/modules/ngx_http_headers_filter_module.c \
			src/http/modules/ngx_http_not_modified_filter_module.c \
			src/http/ngx_http_busy_lock.c \
			src/http/ngx_http_file_cache.c \
			src/http/modules/ngx_http_gzip_filter_module.c \
			src/http/ngx_http_postpone_filter_module.c \
			src/http/modules/ngx_http_ssi_filter_module.c \
			src/http/modules/ngx_http_charset_filter_module.c \
			src/http/modules/ngx_http_userid_filter_module.c \
			src/http/ngx_http_spdy.c \
			src/http/ngx_http_spdy_module.c \
			src/http/ngx_http_spdy_filter_module.c \
			src/http/modules/ngx_http_autoindex_module.c \
			src/http/modules/ngx_http_access_module.c \
			src/http/modules/ngx_http_limit_conn_module.c \
			src/http/modules/ngx_http_limit_req_module.c \
			src/http/modules/ngx_http_geo_module.c \
			src/http/modules/ngx_http_map_module.c \
			src/http/modules/ngx_http_split_clients_module.c \
			src/http/modules/ngx_http_referer_module.c \
			src/http/modules/ngx_http_proxy_module.c \
			src/http/modules/ngx_http_fastcgi_module.c \
			src/http/modules/ngx_http_uwsgi_module.c \
			src/http/modules/ngx_http_scgi_module.c \
			src/http/modules/ngx_http_memcached_module.c \
			src/http/modules/ngx_http_empty_gif_module.c \
			src/http/modules/ngx_http_browser_module.c \
			src/http/modules/ngx_http_flv_module.c \
			src/http/modules/ngx_http_mp4_module.c \
			src/http/modules/ngx_http_upstream_hash_module.c \
			src/http/modules/ngx_http_upstream_ip_hash_module.c \
			src/http/modules/ngx_http_upstream_least_conn_module.c \
			src/http/modules/ngx_http_upstream_keepalive_module.c \
			objs/ngx_modules.c \
			src/glob/glob.c
LOCAL_C_INCLUDES := external/zlib/src $(LOCAL_PATH) $(LOCAL_PATH)/src/core $(LOCAL_PATH)/src/event $(LOCAL_PATH)/src/event/modules $(LOCAL_PATH)/src/os/unix $(LOCAL_PATH)/objs $(LOCAL_PATH)/src/http $(LOCAL_PATH)/src/http/modules $(LOCAL_PATH)/src/glob
LOCAL_STATIC_LIBRARIES := libz

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := nginx.conf
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/nginx
LOCAL_SRC_FILES := android/nginx.conf

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := EMPTY_DIRECTORY1
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/nginx/client_body_temp
LOCAL_SRC_FILES := android/EMPTY_DIRECTORY

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := EMPTY_DIRECTORY2
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/nginx/fastcgi_temp
LOCAL_SRC_FILES := android/EMPTY_DIRECTORY

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := EMPTY_DIRECTORY3
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/nginx/proxy_temp
LOCAL_SRC_FILES := android/EMPTY_DIRECTORY

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := EMPTY_DIRECTORY4
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/nginx/scgi_temp
LOCAL_SRC_FILES := android/EMPTY_DIRECTORY

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := EMPTY_DIRECTORY5
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/nginx/uwsgi_temp
LOCAL_SRC_FILES := android/EMPTY_DIRECTORY

include $(BUILD_PREBUILT)
