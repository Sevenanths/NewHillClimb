.class public Lcom/adsdk/sdk/mraid/MraidView;
.super Landroid/webkit/WebView;
.source "MraidView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;,
        Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;,
        Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;,
        Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;,
        Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;,
        Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;,
        Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;,
        Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;,
        Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;,
        Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;,
        Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;,
        Lcom/adsdk/sdk/mraid/MraidView$PlacementType;,
        Lcom/adsdk/sdk/mraid/MraidView$ViewState;
    }
.end annotation


# static fields
.field public static final AD_CONTAINER_LAYOUT_ID:I = 0x66

.field private static final LOGTAG:Ljava/lang/String; = "MraidView"

.field public static final MODAL_CONTAINER_LAYOUT_ID:I = 0x65

.field public static final PLACEHOLDER_VIEW_ID:I = 0x64


# instance fields
.field private mBrowserController:Lcom/adsdk/sdk/mraid/MraidBrowserController;

.field private mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

.field private mHasFiredReadyEvent:Z

.field private mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

.field private final mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 88
    sget-object v0, Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;->ENABLED:Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;

    sget-object v1, Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;

    .line 89
    sget-object v2, Lcom/adsdk/sdk/mraid/MraidView$PlacementType;->INLINE:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V
    .locals 0
    .parameter "context"
    .parameter "expStyle"
    .parameter "buttonStyle"
    .parameter "placementType"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 95
    iput-object p4, p0, Lcom/adsdk/sdk/mraid/MraidView;->mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    .line 96
    invoke-direct {p0, p2, p3}, Lcom/adsdk/sdk/mraid/MraidView;->initialize(Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V

    .line 97
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidView;Ljava/net/URI;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/mraid/MraidView;->tryCommand(Ljava/net/URI;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidView;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mHasFiredReadyEvent:Z

    return v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidDisplayController;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidView$PlacementType;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mPlacementType:Lcom/adsdk/sdk/mraid/MraidView$PlacementType;

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/mraid/MraidView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/adsdk/sdk/mraid/MraidView;->mHasFiredReadyEvent:Z

    return-void
.end method

.method private copyRawResourceToFilesDir(ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "resourceId"
    .parameter "destinationFilename"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 308
    .local v5, is:Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 309
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 308
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, destinationPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v1, destinationFile:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v7, 0x2000

    new-array v0, v7, [B

    .line 320
    .local v0, b:[B
    :goto_0
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .local v6, n:I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 326
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 329
    .end local v0           #b:[B
    .end local v2           #destinationPath:Ljava/lang/String;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v6           #n:I
    :goto_1
    return-object v2

    .line 314
    .restart local v2       #destinationPath:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 315
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v2, ""

    goto :goto_1

    .line 321
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #b:[B
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #n:I
    :cond_0
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 323
    .end local v6           #n:I
    :catch_1
    move-exception v3

    .line 326
    .local v3, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 324
    :goto_2
    const-string v2, ""

    goto :goto_1

    .line 325
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 326
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 327
    :goto_3
    throw v7

    .line 326
    .restart local v6       #n:I
    :catch_2
    move-exception v7

    goto :goto_1

    .end local v6           #n:I
    :catch_3
    move-exception v8

    goto :goto_3

    .restart local v3       #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method private initialize(Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V
    .locals 3
    .parameter "expStyle"
    .parameter "buttonStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setScrollContainer(Z)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setBackgroundColor(I)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setVerticalScrollBarEnabled(Z)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setHorizontalScrollBarEnabled(Z)V

    .line 106
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidView$1;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 122
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidBrowserController;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;-><init>(Lcom/adsdk/sdk/mraid/MraidView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mBrowserController:Lcom/adsdk/sdk/mraid/MraidBrowserController;

    .line 123
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-direct {v0, p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidDisplayController;-><init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    .line 125
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;

    invoke-direct {v0, p0, v2}, Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;-><init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$MraidWebViewClient;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 126
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;

    invoke-direct {v0, p0, v2}, Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;-><init>(Lcom/adsdk/sdk/mraid/MraidView;Lcom/adsdk/sdk/mraid/MraidView$MraidWebChromeClient;)V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 129
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 131
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    invoke-direct {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    .line 132
    return-void
.end method

.method private notifyOnFailureListener()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;->onFailure(Lcom/adsdk/sdk/mraid/MraidView;)V

    .line 188
    :cond_0
    return-void
.end method

.method private tryCommand(Ljava/net/URI;)Z
    .locals 8
    .parameter "uri"

    .prologue
    .line 284
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, commandType:Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 286
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v4, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 291
    invoke-static {v1, v4, p0}, Lcom/adsdk/sdk/mraid/MraidCommandRegistry;->createCommand(Ljava/lang/String;Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidCommand;

    move-result-object v0

    .line 292
    .local v0, command:Lcom/adsdk/sdk/mraid/MraidCommand;
    if-nez v0, :cond_1

    .line 293
    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireNativeCommandCompleteEvent(Ljava/lang/String;)V

    .line 294
    const/4 v5, 0x0

    .line 298
    :goto_1
    return v5

    .line 287
    .end local v0           #command:Lcom/adsdk/sdk/mraid/MraidCommand;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 288
    .local v3, pair:Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 296
    .end local v3           #pair:Lorg/apache/http/NameValuePair;
    .restart local v0       #command:Lcom/adsdk/sdk/mraid/MraidCommand;
    :cond_1
    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidCommand;->execute()V

    .line 297
    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireNativeCommandCompleteEvent(Ljava/lang/String;)V

    .line 298
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->destroy()V

    .line 136
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 137
    return-void
.end method

.method protected fireChangeEventForProperties(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adsdk/sdk/mraid/MraidProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, properties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/adsdk/sdk/mraid/MraidProperty;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, props:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, json:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.mraidbridge.fireChangeEvent("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    .line 268
    const-string v2, "MraidView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fire changes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V
    .locals 4
    .parameter "property"

    .prologue
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/MraidProperty;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, json:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    .line 259
    const-string v1, "MraidView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fire change: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method protected fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "action"
    .parameter "message"

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidbridge.fireErrorEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method protected fireNativeCommandCompleteEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidbridge.nativeCallComplete(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method protected fireReadyEvent()V
    .locals 1

    .prologue
    .line 276
    const-string v0, "window.mraidbridge.fireReadyEvent();"

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidView;->injectJavaScript(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected getBrowserController()Lcom/adsdk/sdk/mraid/MraidBrowserController;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mBrowserController:Lcom/adsdk/sdk/mraid/MraidBrowserController;

    return-object v0
.end method

.method protected getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mDisplayController:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    return-object v0
.end method

.method public getOnCloseButtonStateChangeListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$9(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnCloseListener()Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$4(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnExpandListener()Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnExpandListener:Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$2(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnFailureListener()Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$0(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnOpenListener()Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$11(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnReadyListener()Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #getter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnReadyListener:Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$6(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;)Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;

    move-result-object v0

    return-object v0
.end method

.method protected injectJavaScript(Ljava/lang/String;)V
    .locals 2
    .parameter "js"

    .prologue
    .line 253
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 254
    :cond_0
    return-void
.end method

.method public loadHtmlData(Ljava/lang/String;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 141
    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<html><head></head><body style=\'margin:0;padding:0;\'>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    const-string v2, "</body></html>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    :cond_0
    const-string v0, "<head>"

    const-string v2, "<head><script>(function() {\n  var isIOS = (/iphone|ipad|ipod/i).test(window.navigator.userAgent.toLowerCase()); \n  if (isIOS) {\n    console = {};\n    console.log = function(log) {\n      var iframe = document.createElement(\'iframe\');\n      iframe.setAttribute(\'src\', \'ios-log: \' + log);\n      document.documentElement.appendChild(iframe);\n      iframe.parentNode.removeChild(iframe);\n      iframe = null;\n    };\n    console.debug = console.info = console.warn = console.error = console.log;\n  }\n}());\n\n(function() {\n  // Establish the root mraidbridge object.\n  var mraidbridge = window.mraidbridge = {};\n  \n  // Listeners for bridge events.\n  var listeners = {};\n  \n  // Queue to track pending calls to the native SDK.\n  var nativeCallQueue = [];\n  \n  // Whether a native call is currently in progress.\n  var nativeCallInFlight = false;\n\n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  mraidbridge.fireReadyEvent = function() {\n    mraidbridge.fireEvent(\'ready\');\n  };\n  \n  mraidbridge.fireChangeEvent = function(properties) {\n    mraidbridge.fireEvent(\'change\', properties);\n  };\n  \n  mraidbridge.fireErrorEvent = function(message, action) {\n    mraidbridge.fireEvent(\'error\', message, action);\n  };\n\n  mraidbridge.fireEvent = function(type) {\n    var ls = listeners[type];\n    if (ls) {\n      var args = Array.prototype.slice.call(arguments);\n      args.shift();\n      var l = ls.length;\n      for (var i = 0; i < l; i++) {\n        ls[i].apply(null, args);\n      }\n    }\n  };\n  \n  mraidbridge.nativeCallComplete = function(command) {\n    if (nativeCallQueue.length === 0) {\n      nativeCallInFlight = false;\n      return;\n    }\n    \n    var nextCall = nativeCallQueue.pop();\n    window.location = nextCall;\n  };\n  \n  mraidbridge.executeNativeCall = function(command) {\n    var call = \'mraid://\' + command;\n    \n    var key, value;\n    var isFirstArgument = true;\n    \n    for (var i = 1; i < arguments.length; i += 2) {\n      key = arguments[i];\n      value = arguments[i + 1];\n      \n      if (value === null) continue;\n      \n      if (isFirstArgument) {\n        call += \'?\';\n        isFirstArgument = false;\n      } else {\n        call += \'&\';\n      }\n      \n      call += key + \'=\' + escape(value);\n    }\n\n    if (nativeCallInFlight) {\n      nativeCallQueue.push(call);\n    } else {\n      nativeCallInFlight = true;\n      window.location = call;\n    }\n  };\n  \n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  mraidbridge.addEventListener = function(event, listener) {\n    var eventListeners;\n    listeners[event] = listeners[event] || [];\n    eventListeners = listeners[event];\n    \n    for (var l in eventListeners) {\n      // Listener already registered, so no need to add it.\n      if (listener === l) return;\n    }\n    \n    eventListeners.push(listener);\n  };\n\n  mraidbridge.removeEventListener = function(event, listener) {\n    if (listeners.hasOwnProperty(event)) {\n      var eventListeners = listeners[event];\n      if (eventListeners) {\n        var idx = eventListeners.indexOf(listener);\n        if (idx !== -1) {\n          eventListeners.splice(idx, 1);\n        }\n      }\n    }\n  };\n}());\n\n(function() {\n  var mraid = window.mraid = {};\n  var bridge = window.mraidbridge;\n  \n  // Constants. ////////////////////////////////////////////////////////////////////////////////////\n  \n  var VERSION = mraid.VERSION = \'1.0\';\n  \n  var STATES = mraid.STATES = {\n    LOADING: \'loading\',     // Initial state.\n    DEFAULT: \'default\',\n    EXPANDED: \'expanded\',\n    HIDDEN: \'hidden\'\n  };\n  \n  var EVENTS = mraid.EVENTS = {\n    ERROR: \'error\',\n    INFO: \'info\',\n    READY: \'ready\',\n    STATECHANGE: \'stateChange\',\n    VIEWABLECHANGE: \'viewableChange\'\n  };\n  \n  var PLACEMENT_TYPES = mraid.PLACEMENT_TYPES = {\n    UNKNOWN: \'inline\',\n    INLINE: \'inline\',\n    INTERSTITIAL: \'interstitial\'\n  };\n\n  // External MRAID state: may be directly or indirectly modified by the ad JS. ////////////////////\n\n  // Properties which define the behavior of an expandable ad.\n  var expandProperties = {\n    width: -1,\n    height: -1,\n    useCustomClose: false,\n    isModal: true,\n    lockOrientation: false\n  };\n\n  var hasSetCustomSize = false;\n\n  var hasSetCustomClose = false;\n \n  var listeners = {};\n\n  // Internal MRAID state. Modified by the native SDK. /////////////////////////////////////////////\n  \n  var state = STATES.LOADING;\n  \n  var isViewable = false;\n  \n  var screenSize = { width: -1, height: -1 };\n\n  var placementType = PLACEMENT_TYPES.UNKNOWN;\n  \n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  var EventListeners = function(event) {\n    this.event = event;\n    this.count = 0;\n    var listeners = {};\n    \n    this.add = function(func) {\n      var id = String(func);\n      if (!listeners[id]) {\n        listeners[id] = func;\n        this.count++;\n      }\n    };\n    \n    this.remove = function(func) {\n      var id = String(func);\n      if (listeners[id]) {\n        listeners[id] = null;\n        delete listeners[id];\n        this.count--;\n        return true;\n      } else {\n        return false;\n      }\n    };\n    \n    this.removeAll = function() {\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) this.remove(listeners[id]);\n      }\n    };\n    \n    this.broadcast = function(args) {\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) listeners[id].apply({}, args);\n      }\n    };\n    \n    this.toString = function() {\n      var out = [event, \':\'];\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) out.push(\'|\', id, \'|\');\n      }\n      return out.join(\'\');\n    };\n  };\n  \n  var broadcastEvent = function() {\n    var args = new Array(arguments.length);\n    var l = arguments.length;\n    for (var i = 0; i < l; i++) args[i] = arguments[i];\n    var event = args.shift();\n    if (listeners[event]) listeners[event].broadcast(args);\n  };\n  \n  var contains = function(value, array) {\n    for (var i in array) {\n      if (array[i] === value) return true;\n    }\n    return false;\n  };\n  \n  var clone = function(obj) {\n    if (obj === null) return null;\n    var f = function() {};\n    f.prototype = obj;\n    return new f();\n  };\n  \n  var stringify = function(obj) {\n    if (typeof obj === \'object\') {\n      var out = [];\n      if (obj.push) {\n        // Array.\n        for (var p in obj) out.push(obj[p]);\n        return \'[\' + out.join(\',\') + \']\';\n      } else {\n        // Other object.\n        for (var p in obj) out.push(\"\'\" + p + \"\': \" + obj[p]);\n        return \'{\' + out.join(\',\') + \'}\';\n      }\n    } else return String(obj);\n  };\n  \n  var trim = function(str) {\n    return str.replace(/^\\s+|\\s+$/g, \'\');\n  };\n  \n  // Functions that will be invoked by the native SDK whenever a \"change\" event occurs.\n  var changeHandlers = {\n    state: function(val) {\n      if (state === STATES.LOADING) {\n        broadcastEvent(EVENTS.INFO, \'Native SDK initialized.\');\n      }\n      state = val;\n      broadcastEvent(EVENTS.INFO, \'Set state to \' + stringify(val));\n      broadcastEvent(EVENTS.STATECHANGE, state);\n    },\n    \n    viewable: function(val) {\n      isViewable = val;\n      broadcastEvent(EVENTS.INFO, \'Set isViewable to \' + stringify(val));\n      broadcastEvent(EVENTS.VIEWABLECHANGE, isViewable);\n    },\n    \n    placementType: function(val) {\n      broadcastEvent(EVENTS.INFO, \'Set placementType to \' + stringify(val));\n      placementType = val;\n    },\n\n    screenSize: function(val) {\n      broadcastEvent(EVENTS.INFO, \'Set screenSize to \' + stringify(val));\n      for (var key in val) {\n        if (val.hasOwnProperty(key)) screenSize[key] = val[key];\n      }\n\n      if (!hasSetCustomSize) {\n        expandProperties[\'width\'] = screenSize[\'width\'];\n        expandProperties[\'height\'] = screenSize[\'height\'];\n      }\n    },\n    \n    expandProperties: function(val) {\n      broadcastEvent(EVENTS.INFO, \'Merging expandProperties with \' + stringify(val));\n      for (var key in val) {\n        if (val.hasOwnProperty(key)) expandProperties[key] = val[key];\n      }\n    }\n  };\n  \n  var validate = function(obj, validators, action, merge) {\n    if (!merge) {\n      // Check to see if any required properties are missing.\n      if (obj === null) {\n        broadcastEvent(EVENTS.ERROR, \'Required object not provided.\', action);\n        return false;\n      } else {\n        for (var i in validators) {\n          if (validators.hasOwnProperty(i) && obj[i] === undefined) {\n            broadcastEvent(EVENTS.ERROR, \'Object is missing required property: \' + i + \'.\', action);\n            return false;\n          }\n        }\n      }\n    }\n    \n    for (var prop in obj) {\n      var validator = validators[prop];\n      var value = obj[prop];\n      if (validator && !validator(value)) {\n        // Failed validation.\n        broadcastEvent(EVENTS.ERROR, \'Value of property \' + prop + \' is invalid.\', \n          action);\n        return false;\n      }\n    }\n    return true;\n  };\n  \n  var expandPropertyValidators = {\n    width: function(v) { return !isNaN(v) && v >= 0; },\n    height: function(v) { return !isNaN(v) && v >= 0; },\n    useCustomClose: function(v) { return (typeof v === \'boolean\'); },\n    lockOrientation: function(v) { return (typeof v === \'boolean\'); }\n  };\n  \n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  bridge.addEventListener(\'change\', function(properties) {\n    for (var p in properties) {\n      if (properties.hasOwnProperty(p)) {\n        var handler = changeHandlers[p];\n        handler(properties[p]);\n      }\n    }\n  });\n  \n  bridge.addEventListener(\'error\', function(message, action) {\n    broadcastEvent(EVENTS.ERROR, message, action);\n  });\n  \n  bridge.addEventListener(\'ready\', function() {\n    broadcastEvent(EVENTS.READY);\n  });\n\n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  mraid.addEventListener = function(event, listener) {\n    if (!event || !listener) {\n      broadcastEvent(EVENTS.ERROR, \'Both event and listener are required.\', \'addEventListener\');\n    } else if (!contains(event, EVENTS)) {\n      broadcastEvent(EVENTS.ERROR, \'Unknown MRAID event: \' + event, \'addEventListener\');\n    } else {\n      if (!listeners[event]) listeners[event] = new EventListeners(event);\n      listeners[event].add(listener);\n    }\n  };\n  \n  mraid.close = function() {\n    if (state === STATES.HIDDEN) {\n      broadcastEvent(EVENTS.ERROR, \'Ad cannot be closed when it is already hidden.\',\n        \'close\');\n    } else bridge.executeNativeCall(\'close\');\n  };\n  \n  mraid.expand = function(URL) {\n    if (state !== STATES.DEFAULT) {\n      broadcastEvent(EVENTS.ERROR, \'Ad can only be expanded from the default state.\', \'expand\');\n    } else {\n      var args = [\'expand\'];\n      \n      if (hasSetCustomClose) {\n        args = args.concat([\'shouldUseCustomClose\', expandProperties.useCustomClose ? \'true\' : \'false\']);\n      }\n\n      if (hasSetCustomSize) {\n        if (expandProperties.width >= 0 && expandProperties.height >= 0) {\n          args = args.concat([\'w\', expandProperties.width, \'h\', expandProperties.height]);\n        }\n      }\n      \n      if (typeof expandProperties.lockOrientation !== \'undefined\') {\n        args = args.concat([\'lockOrientation\', expandProperties.lockOrientation]);\n      }\n\n      if (URL) {\n        args = args.concat([\'url\', URL]);\n      }\n      \n      bridge.executeNativeCall.apply(this, args);\n    }\n  };\n  \n  mraid.getExpandProperties = function() {\n    var properties = {\n      width: expandProperties.width,\n      height: expandProperties.height,\n      useCustomClose: expandProperties.useCustomClose,\n      isModal: expandProperties.isModal\n    };\n    return properties;\n  };\n  \n  mraid.getPlacementType = function() {\n    return placementType;\n  };\n  \n  mraid.getState = function() {\n    return state;\n  };\n  \n  mraid.getVersion = function() {\n    return mraid.VERSION;\n  };\n  \n  mraid.isViewable = function() {\n    return isViewable;\n  };\n  \n  mraid.open = function(URL) {\n    if (!URL) broadcastEvent(EVENTS.ERROR, \'URL is required.\', \'open\');\n    else bridge.executeNativeCall(\'open\', \'url\', URL);\n  };\n\n  mraid.removeEventListener = function(event, listener) {\n    if (!event) broadcastEvent(EVENTS.ERROR, \'Event is required.\', \'removeEventListener\');\n    else {\n      if (listener && (!listeners[event] || !listeners[event].remove(listener))) {\n        broadcastEvent(EVENTS.ERROR, \'Listener not currently registered for event.\', \n          \'removeEventListener\');\n        return;\n      } else if (listeners[event]) listeners[event].removeAll();\n      \n      if (listeners[event] && listeners[event].count === 0) {\n        listeners[event] = null;\n        delete listeners[event];\n      }\n    }\n  };\n  \n  mraid.setExpandProperties = function(properties) {\n    if (validate(properties, expandPropertyValidators, \'setExpandProperties\', true)) {\n      if (properties.hasOwnProperty(\'width\') || properties.hasOwnProperty(\'height\')) {\n        hasSetCustomSize = true;\n      }\n\n      if (properties.hasOwnProperty(\'useCustomClose\')) hasSetCustomClose = true;\n\n      var desiredProperties = [\'width\', \'height\', \'useCustomClose\', \'lockOrientation\'];\n      var length = desiredProperties.length;\n      for (var i = 0; i < length; i++) {\n        var propname = desiredProperties[i];\n        if (properties.hasOwnProperty(propname)) expandProperties[propname] = properties[propname];\n      }\n    }\n  };\n  \n  mraid.useCustomClose = function(shouldUseCustomClose) {\n    expandProperties.useCustomClose = shouldUseCustomClose;\n    hasSetCustomClose = true;\n    bridge.executeNativeCall(\'usecustomclose\', \'shouldUseCustomClose\', shouldUseCustomClose);\n  };\n}());</script>"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 150
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/adsdk/sdk/mraid/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 12
    .parameter "url"

    .prologue
    .line 154
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 155
    .local v3, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v7, out:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 159
    .local v4, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 160
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 162
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 163
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 164
    .local v5, is:Ljava/io/InputStream;
    const/16 v9, 0x1000

    new-array v0, v9, [B

    .line 165
    .local v0, b:[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v6

    .local v6, n:I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    .line 181
    .end local v0           #b:[B
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #n:I
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/adsdk/sdk/mraid/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 182
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 166
    .restart local v0       #b:[B
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #n:I
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_1
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 169
    .end local v0           #b:[B
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #n:I
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v9, "MoPub"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Mraid loadUrl failed (IllegalArgumentException): "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidView;->notifyOnFailureListener()V

    goto :goto_1

    .line 173
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 174
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidView;->notifyOnFailureListener()V

    goto :goto_1

    .line 176
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 177
    .local v1, e:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidView;->notifyOnFailureListener()V

    goto :goto_1
.end method

.method public setOnCloseButtonStateChange(Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #setter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseButtonListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;
    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$8(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnCloseButtonStateChangeListener;)V

    .line 236
    return-void
.end method

.method public setOnCloseListener(Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #setter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnCloseListener:Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;
    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$3(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnCloseListener;)V

    .line 212
    return-void
.end method

.method public setOnExpandListener(Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #setter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnExpandListener:Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;
    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$1(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnExpandListener;)V

    .line 204
    return-void
.end method

.method public setOnFailureListener(Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #setter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnFailureListener:Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;
    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$7(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnFailureListener;)V

    .line 228
    return-void
.end method

.method public setOnOpenListener(Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #setter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnOpenListener:Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;
    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$10(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnOpenListener;)V

    .line 244
    return-void
.end method

.method public setOnReadyListener(Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidView;->mListenerInfo:Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;

    #setter for: Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->mOnReadyListener:Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;
    invoke-static {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;->access$5(Lcom/adsdk/sdk/mraid/MraidView$MraidListenerInfo;Lcom/adsdk/sdk/mraid/MraidView$OnReadyListener;)V

    .line 220
    return-void
.end method
