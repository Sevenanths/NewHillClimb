.class public Lcom/adsdk/sdk/video/WebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAllowNavigation:Z

.field private mAllowedUrl:Ljava/lang/String;

.field private mFinishedLoadingTime:J

.field private mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "allowNavigation"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowNavigation:Z

    .line 22
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    .line 23
    iput-boolean p2, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowNavigation:Z

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    .line 25
    return-void
.end method


# virtual methods
.method public getAllowedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishedLoadingTime()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    return-wide v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageFinished:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAllowedUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_0
    iget-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebViewClient;->mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;->onPageLoaded()V

    .line 116
    :cond_2
    return-void
.end method

.method public setAllowedUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 92
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/adsdk/sdk/video/WebViewClient;->mFinishedLoadingTime:J

    .line 93
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 96
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    .line 101
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebViewClient;->mOnPageLoadedListener:Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;

    .line 128
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v6, 0x1

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 30
    const-string v4, "market:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    const-string v4, "http://market.android.com"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 32
    const-string v4, "sms:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "tel:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 33
    const-string v4, "mailto:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "voicemail:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    const-string v4, "geo:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 35
    const-string v4, "google.streetview:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 38
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v6

    .line 39
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could open URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const-string v4, "mfox:external:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    const/16 v4, 0xe

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 47
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 48
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 47
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 52
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const-string v4, "mfox:replayvideo"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 54
    :try_start_1
    iget-object v4, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-string v4, "replayVideo"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 56
    .local v3, method:Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 57
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "Your activity class has no replayVideo method"

    invoke-static {v4}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Couldn\'t run replayVideo method in your Activity"

    .line 60
    invoke-static {v4}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v4, "mfox:playvideo"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 67
    :try_start_2
    iget-object v4, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 68
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-string v4, "playVideo"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 69
    .restart local v3       #method:Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 70
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v1

    .line 71
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "Your activity class has no playVideo method"

    invoke-static {v4}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v4}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    const-string v4, "mfox:skip"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 78
    iget-object v4, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 81
    :cond_5
    iget-boolean v4, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowNavigation:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/adsdk/sdk/video/WebViewClient;->mAllowedUrl:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 82
    :cond_6
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_7
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    iget-object v4, p0, Lcom/adsdk/sdk/video/WebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
