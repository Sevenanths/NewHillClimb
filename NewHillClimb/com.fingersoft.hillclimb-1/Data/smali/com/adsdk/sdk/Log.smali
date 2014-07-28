.class public final Lcom/adsdk/sdk/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static LOGGING_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 32
    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 36
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 42
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 47
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 52
    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 56
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 61
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 66
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 71
    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 75
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 80
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 85
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :cond_0
    return-void
.end method

.method private static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    return v0
.end method

.method public static isLoggingEnabled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "adsdk_debug_enabled"

    const-string v4, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 17
    .local v0, debug:I
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, sDebug:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    const/4 v2, 0x1

    .line 23
    .end local v1           #sDebug:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 90
    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 94
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 99
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 104
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 109
    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 113
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 118
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 123
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :cond_0
    return-void
.end method
