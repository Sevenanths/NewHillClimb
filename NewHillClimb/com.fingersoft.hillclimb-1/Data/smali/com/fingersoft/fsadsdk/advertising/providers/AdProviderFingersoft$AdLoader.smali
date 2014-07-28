.class Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;
.super Landroid/os/AsyncTask;
.source "AdProviderFingersoft.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/fingersoft/fsadsdk/advertising/AdManager;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;


# direct methods
.method private constructor <init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 40
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;-><init>(Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->doInBackground([Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/fingersoft/fsadsdk/advertising/AdManager;)Ljava/lang/Void;
    .locals 11
    .parameter "adManager"

    .prologue
    const/4 v10, 0x1

    .line 45
    const/4 v8, 0x0

    aget-object v8, p1, v8

    iput-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 47
    const-string v1, ""

    .line 50
    .local v1, imageAddress:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v8}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, locale:Ljava/lang/String;
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v8}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, packageName:Ljava/lang/String;
    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://www.fingersoft.net/mobileads/requestad.php?appid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&locale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    .local v7, url:Ljava/net/URL;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "URL = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 56
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    .local v2, in:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, str:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 64
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 69
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #locale:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #str:Ljava/lang/String;
    .end local v7           #url:Ljava/net/URL;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_1

    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    iget-object v8, v8, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mImageLink:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_1

    .line 72
    :try_start_1
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v7       #url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 74
    .local v3, is:Ljava/io/InputStream;
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    const-string v9, "src"

    invoke-static {v3, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v8, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mRetrievedImage:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    .end local v3           #is:Ljava/io/InputStream;
    .end local v7           #url:Ljava/net/URL;
    :cond_1
    :goto_2
    const/4 v8, 0x0

    return-object v8

    .line 59
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v4       #locale:Ljava/lang/String;
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #str:Ljava/lang/String;
    .restart local v7       #url:Ljava/net/URL;
    :cond_2
    :try_start_2
    const-string v8, "imageUrl="

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 60
    const/16 v8, 0x9

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 61
    :cond_3
    const-string v8, "imageLink="

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 62
    iget-object v8, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    const/16 v9, 0xa

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mImageLink:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 66
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #locale:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #str:Ljava/lang/String;
    .end local v7           #url:Ljava/net/URL;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 77
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 76
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    goto :goto_2

    .line 67
    :catch_3
    move-exception v8

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v2, "adclicked/fingersoft"

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    iget-object v2, v2, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mImageLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8
    .parameter "result"

    .prologue
    const/high16 v7, 0x3f00

    .line 86
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mRetrievedImage:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mImageLink:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 88
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v4, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mImageView:Landroid/widget/ImageView;

    .line 89
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mRetrievedImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    iget-object v4, v4, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 94
    .local v2, scale:F
    const/high16 v4, 0x43a0

    mul-float/2addr v4, v2

    add-float/2addr v4, v7

    float-to-int v3, v4

    .line 95
    .local v3, width:I
    const/high16 v4, 0x4240

    mul-float/2addr v4, v2

    add-float/2addr v4, v7

    float-to-int v0, v4

    .line 98
    .local v0, height:I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->this$0:Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProviderFingersoft$AdLoader;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v5, "adreceived/fingersoft"

    invoke-virtual {v4, v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 103
    const-string v4, "AndroidRuntime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " - onProviderCreate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #scale:F
    .end local v3           #width:I
    :cond_0
    return-void
.end method
