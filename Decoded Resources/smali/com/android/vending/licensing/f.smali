.class public abstract Lcom/android/vending/licensing/f;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/vending/licensing/ILicensingService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.vending.licensing.ILicensingService"

    invoke-virtual {p0, p0, v0}, Lcom/android/vending/licensing/f;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.android.vending.licensing.ILicensingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :sswitch_1
    const-string v0, "com.android.vending.licensing.ILicensingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/vending/licensing/f;->a(JLjava/lang/String;Lcom/android/vending/licensing/n;)V

    move v0, v6

    goto :goto_0

    :cond_0
    const-string v0, "com.android.vending.licensing.ILicenseResultListener"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v5, v0, Lcom/android/vending/licensing/n;

    if-eqz v5, :cond_1

    check-cast v0, Lcom/android/vending/licensing/n;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/vending/licensing/k;

    invoke-direct {v0, v4}, Lcom/android/vending/licensing/k;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
