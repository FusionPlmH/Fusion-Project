
package android.view;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;


public final class InputMonitor implements Parcelable {
    public static final Creator<InputMonitor> CREATOR = new Creator<InputMonitor>() {
        public InputMonitor createFromParcel(Parcel parcel) {
            return new InputMonitor(parcel);
        }

        public InputMonitor[] newArray(int i) {
            return new InputMonitor[i];
        }
    };
    private static final boolean DEBUG = false;
    private static final String TAG = "InputMonitor";
    private final InputChannel mChannel;

    private final String mName;

    public InputMonitor(Parcel parcel) {
        this.mName = parcel.readString();
        this.mChannel = (InputChannel) parcel.readParcelable(null);

    }

    public InputMonitor(String str, InputChannel inputChannel) {
        this.mName = str;
        this.mChannel = inputChannel;

    }

    public int describeContents() {
        return 0;
    }

    public void dispose() {
        this.mChannel.dispose();

    }

    public InputChannel getInputChannel() {
        return this.mChannel;
    }

    public String getName() {
        return this.mName;
    }

    public void pilferPointers() {

    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("InputMonitor{mName=");
        stringBuilder.append(this.mName);
        stringBuilder.append(", mChannel=");
        stringBuilder.append(this.mChannel);
        stringBuilder.append(", mHost=");

        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mName);
        parcel.writeParcelable(this.mChannel, i);

    }
}