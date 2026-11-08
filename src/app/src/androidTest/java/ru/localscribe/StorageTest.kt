package ru.localscribe

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import ru.localscribe.core.*
import ru.localscribe.data.Repository

@RunWith(AndroidJUnit4::class)
class StorageTest {
    @Test
    fun transactionalCheckpointAndRecordUpdateRetainChildren() {
        val c = InstrumentationRegistry.getInstrumentation().targetContext
        val repository = Repository(c)
        val id = "instrumentation-storage"
        repository.delete(id)
        val r = Recording(id, "Тест", 0, "", checkpointSamples = 480000)
        val s = Segment("$id:one", id, 0, 1000, text = "Сохранённый текст")
        repository.commit(r, listOf(s), listOf(Speaker("speaker_1", "Анна")))
        repository.save(r.copy(progress = 0.5f))
        assertEquals(1, repository.segments(id).size)
        repository.edit(id, s.copy(text = "Правка"))
        repository.close()
        val reopened = Repository(c)
        assertEquals("Правка", reopened.segments(id).single().text)
        assertEquals(480000L, reopened.recording(id)!!.checkpointSamples)
        reopened.delete(id)
        assertTrue(reopened.segments(id).isEmpty())
        reopened.close()
    }
}
