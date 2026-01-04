using UnityEngine;
using UnityEngine.UI;

public class SpawnUI : MonoBehaviour
{
    public InputField itemInput;
    public InputField countInput;
    public NativeItemSpawner spawner;

    public void OnGreenButtonPressed()
    {
        string item = itemInput.text;
        int count = int.Parse(countInput.text);

        spawner.SpawnRequest(item, count);
    }
}
