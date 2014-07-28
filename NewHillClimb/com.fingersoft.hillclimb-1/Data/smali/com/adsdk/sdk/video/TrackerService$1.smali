.class Lcom/adsdk/sdk/video/TrackerService$1;
.super Ljava/lang/Object;
.source "TrackerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/TrackerService;->startTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x2710

    const/4 v10, 0x0

    .line 133
    invoke-static {v10}, Lcom/adsdk/sdk/video/TrackerService;->access$0(Z)V

    .line 134
    :goto_0
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$1()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 192
    invoke-static {v10}, Lcom/adsdk/sdk/video/TrackerService;->access$0(Z)V

    .line 193
    invoke-static {v10}, Lcom/adsdk/sdk/video/TrackerService;->access$7(Z)V

    .line 194
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/adsdk/sdk/video/TrackerService;->access$8(Ljava/lang/Thread;)V

    .line 195
    return-void

    .line 136
    :cond_0
    #calls: Lcom/adsdk/sdk/video/TrackerService;->getNextUpdate()Lcom/adsdk/sdk/video/TrackEvent;
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$3()Lcom/adsdk/sdk/video/TrackEvent;

    move-result-object v2

    .line 137
    .local v2, event:Lcom/adsdk/sdk/video/TrackEvent;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sending tracking :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 138
    const-string v8, " Time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 139
    iget-wide v8, v2, Lcom/adsdk/sdk/video/TrackEvent;->timestamp:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 140
    const-string v8, " Events left:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 141
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$4()Ljava/util/Queue;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Queue;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 142
    if-nez v2, :cond_3

    .line 135
    .end local v2           #event:Lcom/adsdk/sdk/video/TrackEvent;
    :cond_1
    :goto_1
    #calls: Lcom/adsdk/sdk/video/TrackerService;->hasMoreUpdates()Z
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$2()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$1()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 178
    :cond_2
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$1()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$5()Ljava/util/Queue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 180
    const-wide/16 v7, 0x7530

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 184
    :goto_2
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$6()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 185
    :try_start_1
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$4()Ljava/util/Queue;

    move-result-object v7

    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$5()Ljava/util/Queue;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->access$5()Ljava/util/Queue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Queue;->clear()V

    .line 184
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 144
    .restart local v2       #event:Lcom/adsdk/sdk/video/TrackEvent;
    :cond_3
    const/4 v6, 0x0

    .line 146
    .local v6, u:Ljava/net/URL;
    :try_start_2
    new-instance v6, Ljava/net/URL;

    .end local v6           #u:Ljava/net/URL;
    iget-object v7, v2, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    .restart local v6       #u:Ljava/net/URL;
    const-string v7, "Sending conversion Request"

    invoke-static {v7}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Perform tracking HTTP Get Url: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    iget-object v8, v2, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 154
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 156
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 158
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    .line 157
    invoke-static {v7, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 161
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    .line 160
    invoke-static {v7, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 163
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 166
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_3
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 167
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 168
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    .line 167
    if-eq v7, v8, :cond_4

    .line 169
    invoke-static {v2}, Lcom/adsdk/sdk/video/TrackerService;->requestRetry(Lcom/adsdk/sdk/video/TrackEvent;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 173
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v5

    .line 174
    .local v5, t:Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/adsdk/sdk/video/TrackerService;->requestRetry(Lcom/adsdk/sdk/video/TrackEvent;)V

    goto/16 :goto_1

    .line 147
    .end local v0           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #t:Ljava/lang/Throwable;
    .end local v6           #u:Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 148
    .local v1, e:Ljava/net/MalformedURLException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Wrong tracking url:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v8, v2, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 148
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 171
    .end local v1           #e:Ljava/net/MalformedURLException;
    .restart local v0       #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #u:Ljava/net/URL;
    :cond_4
    :try_start_4
    const-string v7, "Tracking OK"

    invoke-static {v7}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 189
    .end local v0           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #event:Lcom/adsdk/sdk/video/TrackEvent;
    .end local v3           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #u:Ljava/net/URL;
    :cond_5
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/adsdk/sdk/video/TrackerService;->access$0(Z)V

    goto/16 :goto_0

    .line 181
    :catch_2
    move-exception v7

    goto/16 :goto_2
.end method
