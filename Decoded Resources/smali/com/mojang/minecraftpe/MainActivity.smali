.class public Lcom/mojang/minecraftpe/MainActivity;
.super Landroid/app/NativeActivity;


# instance fields
.field private a:I

.field private b:[Ljava/lang/String;

.field private c:Ljava/util/ArrayList;

.field private d:Landroid/app/AlertDialog;

.field private final e:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "minecraftpe"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->e:Ljava/text/DateFormat;

    return-void
.end method

.method static synthetic a(Lcom/mojang/minecraftpe/MainActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(I[IZZ)V
    .locals 6

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/mojang/minecraftpe/b;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mojang/minecraftpe/b;-><init>(Lcom/mojang/minecraftpe/MainActivity;ZZI[I)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/mojang/minecraftpe/MainActivity;I)V
    .locals 0

    iput p1, p0, Lcom/mojang/minecraftpe/MainActivity;->a:I

    return-void
.end method

.method static synthetic a(Lcom/mojang/minecraftpe/MainActivity;ZZ)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    :cond_0
    new-instance v1, Lcom/mojang/minecraftpe/f;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/f;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Ok"

    new-instance v2, Lcom/mojang/minecraftpe/e;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/e;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_1

    const-string v1, "Cancel"

    new-instance v2, Lcom/mojang/minecraftpe/d;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/d;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->d:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/mojang/minecraftpe/MainActivity;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->b:[Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/mojang/minecraftpe/MainActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mojang/minecraftpe/MainActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->d:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static saveScreenshot(Ljava/lang/String;II[I)V
    .locals 4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t create file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method


# virtual methods
.method native RegisterThis()V
.end method

.method native UnregisterThis()V
.end method

.method public buyGame()V
    .locals 0

    return-void
.end method

.method public checkLicense()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public displayDialog(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/high16 v0, 0x7f030000

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mojang/minecraftpe/MainActivity;->a(I[IZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mojang/minecraftpe/MainMenuOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-array v0, v2, [I

    const v1, 0x7f060007

    aput v1, v0, v3

    const v1, 0x7f030003

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/mojang/minecraftpe/MainActivity;->a(I[IZZ)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f060000
        0x7f060001
    .end array-data
.end method

.method public getDateString(I)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->e:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageData(Ljava/lang/String;)[I
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string v1, "images"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v1, v3, v7

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    aput v3, v1, v4

    const/4 v2, 0x1

    aput v7, v1, v2

    const/4 v2, 0x2

    move v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "getImageData: Could not list directory"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getImageData: Could not open image "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public getOptionStrings()[Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v3

    add-int/lit8 v3, v5, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public getUserInputStatus()I
    .locals 1

    iget v0, p0, Lcom/mojang/minecraftpe/MainActivity;->a:I

    return v0
.end method

.method public getUserInputString()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public hasBuyButtonWhenInvalidLicense()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initiateUserInput(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->b:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->a:I

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->a:I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->setVolumeControlStream(I)V

    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->RegisterThis()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->UnregisterThis()V

    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/NativeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public postScreenshotToFacebook(Ljava/lang/String;II[I)V
    .locals 0

    return-void
.end method

.method public quit()V
    .locals 1

    new-instance v0, Lcom/mojang/minecraftpe/c;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/c;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tick()V
    .locals 0

    return-void
.end method
